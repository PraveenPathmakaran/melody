package apps.praveen.melody

import android.media.MediaMetadataRetriever
import android.os.Build
import android.provider.MediaStore
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File


class MainActivity : FlutterActivity() {
    private val AUDIO_CHANNEL = "audio"
    private lateinit var channel: MethodChannel

    override fun configureFlutterEngine( flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, AUDIO_CHANNEL)
        channel.setMethodCallHandler { call, result ->
            if (call.method == "getAudios") {
                val allAudios = getAudios()
                result.success(allAudios)
            }

            if (call.method == "getAlbumMetaData") {
                val path = call.argument<String?>("path") ?: ""

                val audioMetaData = getAlbumMetaData(path)
                result.success(audioMetaData)
            }




        }
    }

    private fun getAudios(): List<Map<String, String>> {
        val allAudios = mutableListOf<Map<String, String>>()
        val selection = MediaStore.Audio.Media.IS_MUSIC + " != 0"
        val projection = arrayOf(
            MediaStore.Audio.Media.TITLE,
            MediaStore.Audio.Media.ARTIST,
            MediaStore.Audio.Media.DATA,
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
                            "title" to cursor.getString(0),
                            "artist" to cursor.getString(1),
                            "path" to cursor.getString(2)
                        )
                    )
                }
            }
        }

        return allAudios
    }
}

    private fun getAlbumMetaData(filePath: String):  ByteArray? {
        val  retriever = MediaMetadataRetriever()
        try {
            retriever.setDataSource(filePath)
            return retriever.embeddedPicture
        } catch (e: Exception) {
            e.printStackTrace()
            return null
        } finally {
            try {
                retriever.release()
            } catch (e: Exception) {
                // Log any additional errors when releasing the retriever
                e.printStackTrace()
            }
        }
    }




