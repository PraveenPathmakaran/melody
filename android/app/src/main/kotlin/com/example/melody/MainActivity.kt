package com.example.melody

import android.content.Context
import android.provider.MediaStore
import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val AUDIO_CHANNEL = "audio"
    private lateinit var channel: MethodChannel

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, AUDIO_CHANNEL)
        channel.setMethodCallHandler { call, result ->
            if (call.method == "getAudios") {
                val allAudios = getAudios()
                result.success(allAudios)
            }
        }
    }


    private fun getAudios(): List<Map<String, String>> {
        val allAudios = mutableListOf<Map<String, String>>()
        val selection = MediaStore.Audio.Media.IS_MUSIC + " != 0"
        val projection = arrayOf(
            MediaStore.Audio.Media._ID,
            MediaStore.Audio.Media.TITLE,
            MediaStore.Audio.Media.DATA,
            MediaStore.Audio.Media.ARTIST
        )

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            applicationContext.contentResolver.query(
                MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
                projection,
                selection,
                null,
                null
            )?.use { cursor ->
                while (cursor.moveToNext()) {
                    allAudios.add(
                        mapOf(
                            "uid" to cursor.getString(0),
                            "name" to cursor.getString(1),
                            "path" to cursor.getString(2),
                            "artist" to cursor.getString(3)
                        )
                    )
                }
            }
        }

        return allAudios
    }
}
