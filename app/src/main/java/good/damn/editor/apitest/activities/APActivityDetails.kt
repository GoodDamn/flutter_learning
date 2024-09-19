package good.damn.editor.apitest.activities

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity

class APActivityDetails: AppCompatActivity() {

    companion object {
        const val INTENT_ID = "ID"
    }

    override fun onCreate(
        savedInstanceState: Bundle?
    ) {
        super.onCreate(
            savedInstanceState
        )

        val id = intent.getIntExtra(
            INTENT_ID,
            -1
        )

    }

}