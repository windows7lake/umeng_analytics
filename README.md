# third_um_sdk

基于友盟统计的SDK封装

## 使用说明

// 发送自定义事件（目前属性值支持字符、整数、浮点、长整数，暂不支持NULL、布尔、MAP、数组）
UmengSdk.onEvent("VideoPlay", {"userID":"神秘账号", "channel":"wx", "playTime":10});

// 设置用户账号
UmengSdk.onProfileSignIn("user_id");

// 取消用户账号
UmengSdk.onProfileSignOff();

// 如果需要使用页面统计，则先打开该设置
UmengSdk.setPageCollectionModeManual();
  
// 进入页面统计
UmengSdk.onPageStart("viewName");
  
// 离开页面统计
UmengSdk.onPageEnd("viewName");

// 如果不需要上述页面统计，在完成后可关闭该设置；如果没有用该功能可忽略；
UmengSdk.setPageCollectionModeAuto();

// 错误发送
UmengSdk.reportError("后台程序执行时间过长");