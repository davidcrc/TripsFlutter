package com.davisoft.platzi_flutter_app

import android.annotation.TargetApi
import android.os.Build
import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);

        // Hacer transparente la parte superior del app
        this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT);
    }
}
