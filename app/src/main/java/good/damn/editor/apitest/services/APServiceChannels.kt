package good.damn.editor.apitest.services

import android.util.Log
import good.damn.editor.apitest.APApp
import good.damn.editor.apitest.models.APModelChannel
import good.damn.editor.apitest.services.interfaces.APIListenerOnGetChannels
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.net.URL
import java.nio.charset.StandardCharsets

class APServiceChannels {

    companion object {
        private const val TAG = "APServiceChannels"
    }

    var onGetChannels: APIListenerOnGetChannels? = null

    private var mJob: Job? = null

    fun getChannelsAsync() {
        mJob = APApp.scope.launch {
            val url = URL(
                "https://damntv.ru/api/channels"
            )
            val stream = url.openStream()
            val buffer = ByteArray(1024)
            val out = ByteArrayOutputStream()
            var n: Int

            while (true) {
                n = stream.read(buffer)
                if (n == -1) {
                    break
                }
                out.write(buffer, 0, n)
            }

            stream.close()
            val data = out.toByteArray()
            out.close()

            val json = String(data, StandardCharsets.UTF_8)

            val jsonObj = JSONObject(json)

            val count = jsonObj.getInt(
                "totalCount"
            )

            val jsonChannels = jsonObj.getJSONArray(
                "channels"
            )

            val arr = Array(count) {
                val jsonChannel = jsonChannels.getJSONObject(it)
                val title = jsonChannel.getString(
                    "name"
                )

                val id = jsonChannel.getInt(
                    "id"
                )

                val imageUrl = jsonChannel.getString(
                    "imageUrl"
                )

                APModelChannel(
                    id,
                    title,
                    imageUrl
                )
            }


            APApp.ui {
                onGetChannels?.onGetChannels(
                    arr
                )
            }
        }
    }

    fun cancel() {
        mJob?.cancel()
    }
}