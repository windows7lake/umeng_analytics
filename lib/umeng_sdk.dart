import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class UmengSdk {

  static const MethodChannel _channel =
      const MethodChannel('umeng_sdk');

  static Future<dynamic> initCommon(String androidAppkey, String iosAppkey, String channel) async {
    List<dynamic> params = [androidAppkey, iosAppkey ,channel];
    if(Platform.isAndroid){
      final dynamic result =  await _channel.invokeMethod('initCommon', params);
      return result;
    }
    return null;
  }

  static void onEvent(String event, Map<String,dynamic> properties) {
    List<dynamic> args = [event,properties];
    if(Platform.isAndroid){
      _channel.invokeMethod('onEvent', args);
    }

  }

  static void onProfileSignIn (String userID) {
    List<dynamic> args = [userID];
    if(Platform.isAndroid){
      _channel.invokeMethod('onProfileSignIn', args);
    }

  }

  static void onProfileSignOff () {
    if(Platform.isAndroid){
      _channel.invokeMethod('onProfileSignOff');
    }

  }

  static void setPageCollectionModeManual() {
    if(Platform.isAndroid){
      _channel.invokeMethod('setPageCollectionModeManual');
    }

  }

  static void onPageStart(String viewName) {
    List<dynamic> args = [viewName];
    if(Platform.isAndroid){
      _channel.invokeMethod('onPageStart', args);
    }

  }

  static void onPageEnd(String viewName) {
    List<dynamic> args = [viewName];
    if(Platform.isAndroid){
      _channel.invokeMethod('onPageEnd', args);
    }

  }

  static void setPageCollectionModeAuto() {
    if(Platform.isAndroid){
      _channel.invokeMethod('setPageCollectionModeAuto');
    }

  }

  static void reportError(String error) {
    List<dynamic> args = [error];
    if(Platform.isAndroid){
      _channel.invokeMethod('reportError', args);
    }

  }
}
