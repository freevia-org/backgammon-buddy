package org.freevia.backgammonbuddy

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class OfflineSpeechPolicyTest {
    private val local = SpeechVoice("local", "fr-FR", false, emptySet())

    @Test fun acceptsOnlyInstalledOfflineVoiceForSelectedLanguage() {
        assertTrue(OfflineSpeechPolicy.eligible(local, "fr"))
        assertTrue(OfflineSpeechPolicy.eligible(local, "fr-CA"))
        assertFalse(OfflineSpeechPolicy.eligible(local, "en"))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(networkRequired = true), "fr"))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(features = setOf("notInstalled")), "fr"))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(features = null), "fr"))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(locale = "de-DE"), "fr"))
    }

    @Test fun nativeFailureCannotBeOverriddenByMatchingName() {
        assertFalse(OfflineSpeechPolicy.selected(local, false, local, "fr"))
    }

    @Test fun activeVoiceMustMatchAndStillBeSafe() {
        assertTrue(OfflineSpeechPolicy.selected(local, true, local, "fr"))
        assertFalse(OfflineSpeechPolicy.selected(local, true, null, "fr"))
        assertFalse(OfflineSpeechPolicy.selected(local, true, local.copy(name = "default"), "fr"))
        assertFalse(OfflineSpeechPolicy.selected(local, true, local.copy(networkRequired = true), "fr"))
        assertFalse(OfflineSpeechPolicy.selected(local, true,
            local.copy(features = setOf("notInstalled")), "fr"))
        assertFalse(OfflineSpeechPolicy.selected(local, true, local, "en"))
    }
}
