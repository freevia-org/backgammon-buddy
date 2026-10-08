package org.freevia.backgammonbuddy

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class OfflineSpeechPolicyTest {
    private val local = SpeechVoice("local", "en-US", false, emptySet())

    @Test fun acceptsOnlyInstalledOfflineEnglishVoice() {
        assertTrue(OfflineSpeechPolicy.eligible(local))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(networkRequired = true)))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(features = setOf("notInstalled"))))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(features = null)))
        assertFalse(OfflineSpeechPolicy.eligible(local.copy(locale = "de-DE")))
    }

    @Test fun nativeFailureCannotBeOverriddenByMatchingName() {
        assertFalse(OfflineSpeechPolicy.selected(local, false, local))
    }

    @Test fun activeVoiceMustMatchAndStillBeSafe() {
        assertTrue(OfflineSpeechPolicy.selected(local, true, local))
        assertFalse(OfflineSpeechPolicy.selected(local, true, null))
        assertFalse(OfflineSpeechPolicy.selected(local, true, local.copy(name = "default")))
        assertFalse(OfflineSpeechPolicy.selected(local, true, local.copy(networkRequired = true)))
        assertFalse(OfflineSpeechPolicy.selected(local, true,
            local.copy(features = setOf("notInstalled"))))
    }
}
