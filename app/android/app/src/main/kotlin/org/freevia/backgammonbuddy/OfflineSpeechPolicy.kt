package org.freevia.backgammonbuddy

/** Pure policy shared by native selection and its tests. Unknown data fails closed. */
internal data class SpeechVoice(
    val name: String,
    val locale: String,
    val networkRequired: Boolean,
    val features: Set<String>?,
)

internal object OfflineSpeechPolicy {
    fun eligible(voice: SpeechVoice): Boolean =
        voice.name.isNotEmpty() && voice.locale == "en-US" &&
            !voice.networkRequired && voice.features != null &&
            "notInstalled" !in voice.features

    fun selected(selected: SpeechVoice, success: Boolean, active: SpeechVoice?): Boolean =
        success && eligible(selected) && active != null && eligible(active) &&
            active.name == selected.name && active.locale == selected.locale
}
