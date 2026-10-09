package org.freevia.runtimeprobe;

import static org.junit.Assert.*;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;

/** Acceptance of an unchanged, separately installed release; no mocks or FFI injection. */
@RunWith(AndroidJUnit4.class)
public class ReleaseRuntimeTest {
    private static final String APP = "org.freevia.backgammonbuddy";
    private UiDevice device;
    private File output;
    private final JSONObject evidence = new JSONObject();

    @Test(timeout = 240_000)
    public void exactReleaseRunsEngineOn16KbArm64() throws Exception {
        Context context = InstrumentationRegistry.getInstrumentation().getContext();
        Bundle args = InstrumentationRegistry.getArguments();
        device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());
        output = new File(context.getExternalFilesDir(null), "runtime-evidence");
        assertTrue(output.isDirectory() || output.mkdirs());
        try {
            String expectedSha = required(args, "expectedApkSha256", "[a-f0-9]{64}");
            String expectedCert = required(args, "expectedCertificateSha256", "[a-f0-9]{64}");
            long expectedVersion = Long.parseLong(required(args, "expectedVersionCode", "[1-9][0-9]*"));
            String pages = device.executeShellCommand("getconf PAGE_SIZE").trim();
            evidence.put("pageSize", pages);
            evidence.put("supportedAbis", Arrays.asList(Build.SUPPORTED_ABIS).toString());
            evidence.put("androidSdk", Build.VERSION.SDK_INT);
            assertEquals("Requires a genuine 16 KB kernel", "16384", pages);
            assertEquals("Requires ARM64 rather than translation", "arm64-v8a", Build.SUPPORTED_ABIS[0]);
            PackageInfo info = context.getPackageManager().getPackageInfo(APP, PackageManager.GET_SIGNING_CERTIFICATES);
            assertNotNull(info.applicationInfo);
            assertNotNull(info.signingInfo);
            assertEquals("Unexpected signing lineage", 1, info.signingInfo.getApkContentsSigners().length);
            String cert = hex(MessageDigest.getInstance("SHA-256").digest(info.signingInfo.getApkContentsSigners()[0].toByteArray()));
            String apkHash = sha256(new File(info.applicationInfo.sourceDir));
            evidence.put("package", info.packageName);
            evidence.put("versionCode", info.getLongVersionCode());
            evidence.put("certificateSha256", cert);
            evidence.put("installedApkSha256", apkHash);
            assertEquals("Release version changed", expectedVersion, info.getLongVersionCode());
            assertEquals("Release certificate changed", expectedCert, cert);
            assertEquals("Test service changed/re-signed the shipping APK", expectedSha, apkHash);

            Intent launch = context.getPackageManager().getLaunchIntentForPackage(APP);
            assertNotNull("Installed app has no launcher", launch);
            context.startActivity(launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK));
            UiObject2 play = label("Play vs Computer", 45_000);
            assertNull("Physical Buddy must be hidden in v1", find("Play with Buddy"));
            evidence.put("physicalBuddyEntryHidden", true);
            capture("home");
            play.click();
            // The setup is scrollable. Scroll only this fresh test instance.
            for (int i = 0; i < 5 && find("Start match") == null; i++) {
                device.swipe(device.getDisplayWidth()/2, device.getDisplayHeight()*4/5,
                    device.getDisplayWidth()/2, device.getDisplayHeight()/3, 35);
            }
            label("Start match", 10_000).click();
            awaitHumanTurn();
            label("Hint", 10_000).click();
            label("Top plays", 10_000);
            // Explanations appear only after real native ranking returns candidates.
            UiObject2 explanation = label("Why this play?", 45_000);
            assertNull("Engine returned no moves", find("No hints available."));
            evidence.put("nativeRankingDisplayed", true);
            capture("ranked-plays");
            explanation.click();
            label("What changes on the board", 5_000);
            evidence.put("explanationExpanded", true);
            capture("explanation");
            UiObject2 best = device.findObject(By.desc(Pattern.compile(
                "(?s)^1\\.\\n.+\\n(?:100|[0-9]{1,2})\\.[0-9]{2}\\n—$")));
            assertNotNull("No scored top candidate", best);
            evidence.put("scoredTopPlay", best.getContentDescription());
            best.click();
            UiObject2 confirm = label("Confirm", 5_000);
            assertTrue("Top play was not staged", confirm.isEnabled());
            confirm.click();
            evidence.put("confirmActivated", true);
            SystemClock.sleep(1_000);
            awaitHumanTurn();
            // A visible Hint alone does not prove a new turn. Record only the
            // action actually observed; native ranking is the runtime evidence.
            capture("after-play");
            evidence.put("passed", true);
            Log.i("BB_RUNTIME", evidence.toString());
        } catch (Throwable failure) {
            evidence.put("passed", false);
            evidence.put("failure", failure.getClass().getSimpleName() + ": " + failure.getMessage());
            capture("failure");
            throw failure;
        } finally {
            try (FileOutputStream stream = new FileOutputStream(new File(output, "evidence.json"))) {
                stream.write(evidence.toString(2).getBytes(StandardCharsets.UTF_8));
            }
        }
    }

    private void awaitHumanTurn() throws Exception {
        long end = SystemClock.uptimeMillis() + 60_000;
        while (SystemClock.uptimeMillis() < end) {
            UiObject2 hint = find("Hint");
            if (hint != null && hint.isEnabled()) return;
            UiObject2 roll = find("Roll");
            if (roll != null && roll.isEnabled()) roll.click();
            SystemClock.sleep(400);
        }
        fail("No human turn with tutoring available after engine startup");
    }

    private UiObject2 label(String label, long timeout) {
        long end = SystemClock.uptimeMillis() + timeout;
        do {
            UiObject2 found = find(label);
            if (found != null) return found;
            SystemClock.sleep(200);
        } while (SystemClock.uptimeMillis() < end);
        throw new AssertionError("Missing visible label: " + label);
    }

    private UiObject2 find(String label) {
        List<UiObject2> nodes = new ArrayList<>(device.findObjects(By.text(label)));
        nodes.addAll(device.findObjects(By.desc(label)));
        // Flutter's ExpansionTile announces its state as a suffix.
        nodes.addAll(device.findObjects(By.desc(label + ", Collapsed")));
        nodes.addAll(device.findObjects(By.desc(label + ", Expanded")));
        for (UiObject2 node : nodes) if (!node.getVisibleBounds().isEmpty()) return node;
        return null;
    }

    private void capture(String name) throws Exception {
        device.takeScreenshot(new File(output, name + ".png"));
        device.dumpWindowHierarchy(new File(output, name + ".xml"));
    }

    private static String required(Bundle args, String key, String pattern) {
        String value = args.getString(key, "");
        assertTrue("Missing or malformed " + key, value.matches(pattern));
        return value;
    }

    private static String sha256(File file) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        try (FileInputStream stream = new FileInputStream(file)) {
            byte[] chunk = new byte[65536];
            for (int count; (count = stream.read(chunk)) != -1;) digest.update(chunk, 0, count);
        }
        return hex(digest.digest());
    }

    private static String hex(byte[] bytes) {
        StringBuilder result = new StringBuilder();
        for (byte b : bytes) result.append(String.format("%02x", b & 255));
        return result.toString();
    }
}
