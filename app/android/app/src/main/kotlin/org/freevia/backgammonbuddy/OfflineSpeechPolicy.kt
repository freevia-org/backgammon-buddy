package org.freevia.backgammonbuddy

/** Pure policy shared by native selection and its tests. Unknown data fails closed. */
internal data class SpeechVoice(
    val name: String,
    val locale: String,
    val networkRequired: Boolean,
    val features: Set<String>?,
)

internal object OfflineSpeechPolicy {
    private fun language(locale: String) = locale.substringBefore('-').lowercase()

    fun eligible(voice: SpeechVoice, requestedLocale: String): Boolean =
        voice.name.isNotEmpty() && language(voice.locale) == language(requestedLocale) &&
            !voice.networkRequired && voice.features != null &&
            "notInstalled" !in voice.features

    fun selected(selected: SpeechVoice, success: Boolean, active: SpeechVoice?, requestedLocale: String): Boolean =
        success && eligible(selected, requestedLocale) && active != null && eligible(active, requestedLocale) &&
            active.name == selected.name && active.locale == selected.locale
}
