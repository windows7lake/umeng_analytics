package com.example.umeng_sdk_example;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import io.flutter.app.FlutterApplication;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.analytics.MobclickAgent;

public class MainApplication extends FlutterApplication {
    @Override
    public void onCreate() {
        super.onCreate();
        UMConfigure.init(this, "5e3f96f3cb23d2a070000048", "Umeng", UMConfigure.DEVICE_TYPE_PHONE, null);
    	UMConfigure.setLogEnabled(true);
    	android.util.Log.i("UMLog", "UMConfigure.init@MainApplication");
    }
}
