import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:umeng_sdk/umeng_sdk.dart';

/* 
	// 基于定制的NavigatorObserver实现自动页面切换采集
	class MaterialApp(
    ...
        onGenerateRoute: Router.generateRoute,
        navigatorObservers: [UmengNavigatorObserver()],
    ...
    )
*/

class UmengNavigatorObserver extends NavigatorObserver {

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    if (route.settings.name != null) {
      UmengSdk.onPageStart(route.settings.name);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    if (route.settings.name != null) {
      UmengSdk.onPageEnd(route.settings.name);
    }
  }
}