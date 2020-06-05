package com.example.umeng_sdk_example;
import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import com.umeng.analytics.MobclickAgent;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    com.example.umeng_sdk.UmengSdkPlugin.setContext(this);
    android.util.Log.i("UMLog", "onCreate@MainActivity");
  }

  	@Override
	protected void onPause() {
	    super.onPause();
	    MobclickAgent.onPause(this);
	    android.util.Log.i("UMLog", "onPause@MainActivity");
	}

    @Override
    protected void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
        android.util.Log.i("UMLog", "onResume@MainActivity");
    }
}
