package org.freevia.backgammonbuddy

import android.content.Context
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import android.speech.tts.Voice
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/** Only passes coaching text to a verified installed, non-network Android voice. */
internal class OfflineBuddyTts(context: Context, messenger: BinaryMessenger) :
    MethodChannel.MethodCallHandler {
    private val context = context.applicationContext
    private val main = Handler(Looper.getMainLooper())
    private val channel = MethodChannel(messenger, "org.freevia.backgammonbuddy/offline_speech")
    private var engine: TextToSpeech? = null
    private var ready = false
    private var generation = 0L
    private var utterance = 0L
    private var initialization: MethodChannel.Result? = null
    private var pending: Pair<String, MethodChannel.Result>? = null
    private var owner: String? = null

    init {
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        val session = call.argument<String>("session")
        if (session.isNullOrEmpty()) { result.success(0); return }
        if (call.method != "configure" && session != owner) {
            // A former screen can finish shutting down after the next screen
            // has started. Its late calls must not stop the new session.
            result.success(0)
            return
        }
        when (call.method) {
            "configure" -> configure(session, result)
            "speak" -> speak(call.argument<String>("text"), result)
            "stop" -> { stop(); result.success(1) }
            "dispose" -> { release(); result.success(1) }
            else -> result.notImplemented()
        }
    }

    private fun configure(session: String, result: MethodChannel.Result) {
        if (session != owner) {
            release()
            owner = session
        }
        if (engine != null || initialization != null) {
            result.success(if (ready) 1 else 0)
            return
        }
        initialization = result
        val expectedGeneration = generation
        try {
            // Use the user's current engine. Do not setLanguage, install data,
            // launch an engine activity or change any system setting.
            engine = TextToSpeech(context) { status ->
                main.post {
                    if (expectedGeneration != generation || initialization == null) return@post
                    ready = status == TextToSpeech.SUCCESS
                    if (ready) engine?.setOnUtteranceProgressListener(listener)
                    val callback = initialization
                    initialization = null
                    callback?.success(if (ready) 1 else 0)
                }
            }
            // A broken installed engine must not leave the narration queue
            // waiting forever for initialization; the text is already visible.
            main.postDelayed({
                if (expectedGeneration == generation && initialization != null) release()
            }, 10_000)
        } catch (_: Exception) {
            release()
        }
    }

    private fun Voice.snapshot() = SpeechVoice(name, locale.toLanguageTag(),
        isNetworkConnectionRequired, features)

    private fun speak(text: String?, result: MethodChannel.Result) {
        val tts = engine
        if (!ready || tts == null || text.isNullOrEmpty()) {
            result.success(0)
            return
        }
        try {
            val voice = tts.voices?.firstOrNull { OfflineSpeechPolicy.eligible(it.snapshot()) }
            if (voice == null) { result.success(0); return }
            val selected = voice.snapshot()
            val success = tts.setVoice(voice) == TextToSpeech.SUCCESS
            // A successful name lookup is insufficient: check Android's actual
            // result AND the active voice, before giving the engine any text.
            if (!OfflineSpeechPolicy.selected(selected, success, tts.voice?.snapshot())) {
                result.success(0)
                return
            }
            // Match flutter_tts's Android mapping: plugin 0.45 => Android 0.9.
            if (tts.setSpeechRate(0.9f) != TextToSpeech.SUCCESS) {
                result.success(0)
                return
            }
            completePending(0)
            val id = "$generation-${++utterance}"
            pending = id to result
            if (tts.speak(text, TextToSpeech.QUEUE_FLUSH, Bundle(), id) != TextToSpeech.SUCCESS) {
                finish(id, 0)
            }
            main.postDelayed({ if (pending?.first == id) stop() }, 60_000)
        } catch (_: Exception) {
            if (pending?.second === result) completePending(0) else result.success(0)
        }
    }

    private val listener = object : UtteranceProgressListener() {
        override fun onStart(utteranceId: String?) = Unit
        override fun onDone(utteranceId: String?) { main.post { finish(utteranceId, 1) } }
        @Deprecated("Android callback")
        override fun onError(utteranceId: String?) { main.post { finish(utteranceId, 0) } }
        override fun onError(utteranceId: String?, errorCode: Int) {
            main.post { finish(utteranceId, 0) }
        }
        override fun onStop(utteranceId: String?, interrupted: Boolean) {
            main.post { finish(utteranceId, 0) }
        }
    }

    private fun finish(id: String?, status: Int) {
        if (pending?.first == id) completePending(status)
    }

    private fun completePending(status: Int) {
        val callback = pending?.second
        pending = null
        callback?.success(status)
    }

    private fun stop() {
        completePending(0)
        try { engine?.stop() } catch (_: Exception) { }
    }

    private fun release() {
        generation++
        stop()
        ready = false
        val callback = initialization
        initialization = null
        callback?.success(0)
        try { engine?.shutdown() } catch (_: Exception) { }
        engine = null
        owner = null
    }

    fun close() {
        release()
        channel.setMethodCallHandler(null)
    }
}
