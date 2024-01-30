package com.example.melody

import android.media.MediaMetadataRetriever
import android.os.Build
import android.provider.MediaStore
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


    private fun getAudios(): List<Map<String, Any?>> {
        val allAudios = mutableListOf<Map<String, Any?>>()
        val selection = MediaStore.Audio.Media.IS_MUSIC + " != 0"
        val projection = arrayOf(
            MediaStore.Audio.Media._ID,
            MediaStore.Audio.Media.TITLE,
            MediaStore.Audio.Media.DATA,
            MediaStore.Audio.Media.ARTIST,
            MediaStore.Audio.Media.DURATION,

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

                    //imageData is Audio image metadata
                    var imageData: ByteArray? = null
                    val durationString = cursor.getString(4)
                    //this checking for prevent unwanted call of getAlbumArt method
                    if (durationString != null && durationString.toIntOrNull() != null) {
                        val durationInMillis = durationString.toInt()

                        if (durationInMillis > 60000) {
                            imageData = getAlbumArt(cursor.getString(2))
                        }
                    }
                    allAudios.add(
                        mapOf(
                            "uid" to cursor.getString(0),
                            "name" to cursor.getString(1),
                            "path" to cursor.getString(2),
                            "artist" to cursor.getString(3),
                            "image" to imageData,
                        )
                    )
                }
            }
        }

        return allAudios
    }


   private fun getAlbumArt(filePath: String): ByteArray? {
       val retriever = MediaMetadataRetriever()


        try {
            // Set the data source to the MP3 file path
            retriever.setDataSource(filePath)

            // Get the embedded album art as a byte array
            return retriever.embeddedPicture
        } catch (e: Exception) {
            // Handle exceptions, e.g., invalid file path, no embedded picture, etc.
            e.printStackTrace()
        } finally {
            retriever.release()
        }

        return null
    }
}
