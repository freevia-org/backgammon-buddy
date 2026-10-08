package org.freevia.backgammonbuddy

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {
    private var offlineSpeech: OfflineBuddyTts? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        offlineSpeech = OfflineBuddyTts(this, flutterEngine.dartExecutor.binaryMessenger)
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        offlineSpeech?.close()
        offlineSpeech = null
        super.cleanUpFlutterEngine(flutterEngine)
    }
}
