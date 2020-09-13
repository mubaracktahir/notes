package com.mubaracktahir.notes

import android.os.Bundle
import android.widget.Toast
import com.mubaracktahir.notes.R
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    Toast.makeText(applicationContext,"I Am gonna do this now ",Toast.LENGTH_LONG).show()
  }
}
