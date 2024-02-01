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
                val pageNumber = call.argument<Int>("pageNumber") ?: 0
                val allAudios = getAudios(pageNumber)
                result.success(allAudios)
            }
        }
    }



    private val PAGE_SIZE = 50

    private fun getAudios(pageNumber: Int): ArrayList<Map<String, Any?>>? {
        val allAudios = ArrayList<Map<String, Any?>>()
        val selection = MediaStore.Audio.Media.IS_MUSIC + " != 0"
        val projection = arrayOf(
            MediaStore.Audio.Media._ID,
            MediaStore.Audio.Media.TITLE,
            MediaStore.Audio.Media.DATA,
            MediaStore.Audio.Media.ARTIST,
            MediaStore.Audio.Media.DURATION // Added duration to projection
        )

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            applicationContext.contentResolver.query(
                MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
                projection,
                selection,
                null,
                "${MediaStore.Audio.Media.TITLE} ASC"
            )?.use { cursor ->
                // Calculate the starting and ending positions for the current page
                val start = pageNumber * PAGE_SIZE
                val end = start + PAGE_SIZE

                // Move to the starting position
                if (cursor.moveToPosition(start)) {
                    do {
                        // Check if there is a duration and it's greater than 60000 milliseconds
                        val durationString = cursor.getString(4)
                        if (durationString != null && durationString.toIntOrNull() != null) {
                            val durationInMillis = durationString.toInt()
                            if (durationInMillis > 60000) {
                                // Retrieve audio information and add to the map
                                val audioInfo = mapOf(
                                    "id" to cursor.getString(0),
                                    "name" to cursor.getString(1),
                                    "path" to cursor.getString(2),
                                    "artist" to cursor.getString(3),
                                    "image" to getAlbumArt(cursor.getString(2))
                                )

                                // Use the UID as the key in the outer map
                                allAudios.add(audioInfo)
                            }
                        }

                        // Move to the next position
                    } while (cursor.moveToNext() && cursor.position < end)
                }
            }
        }

        return allAudios.takeIf { it.isNotEmpty() } // Return null if the map is empty
    }





    private fun getAlbumArt(filePath: String): ByteArray? {
        val retriever = MediaMetadataRetriever()

        return try {
            // Set the data source to the MP3 file path
            retriever.setDataSource(filePath)
            // Get the embedded album art as a byte array
            // Check if there is embedded album art
            retriever.embeddedPicture
        } catch (e: Exception) {
            // Log the error instead of throwing an exception
            e.printStackTrace()
            null
        } finally {
            try {
                retriever.release()
            } catch (e: Exception) {
                // Log any additional errors when releasing the retriever
                e.printStackTrace()
            }
        }
    }

}



