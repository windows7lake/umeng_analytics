#import "UmengSdkPlugin.h"

@implementation UmengSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
//  [SwiftUmengSdkPlugin registerWithRegistrar:registrar];
}
@end

@interface UmengSdkPluginForUMCommon : NSObject
@end
@implementation UmengSdkPluginForUMCommon

+ (BOOL)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result{
    BOOL resultCode = YES;
    if ([@"initCommon" isEqualToString:call.method]){
        result(nil);
    }
    else{
        resultCode = NO;
    }
    return resultCode;
}
@end

@interface UmengSdkPluginForAnalytics : NSObject
@end
@implementation UmengSdkPluginForAnalytics : NSObject

+ (BOOL)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result{
    BOOL resultCode = YES;
    NSArray* arguments = (NSArray *)call.arguments;
    if ([@"onEvent" isEqualToString:call.method]){
        result(nil);
    }
    else if ([@"onProfileSignIn" isEqualToString:call.method]){
    
        result(nil);
    }
    else if ([@"onProfileSignOff" isEqualToString:call.method]){
//        [MobClick profileSignOff];
        result(nil);
    }
    else if ([@"setPageCollectionModeAuto" isEqualToString:call.method]){
//        [MobClick setAutoPageEnabled:YES];
        result(nil);
    }
    else if ([@"setPageCollectionModeManual" isEqualToString:call.method]){
//        [MobClick setAutoPageEnabled:NO];
        result(nil);
    }
    else if ([@"onPageStart" isEqualToString:call.method]){
//        NSString* pageName = arguments[0];
//        [MobClick beginLogPageView:pageName];
        result(nil);
    }
    else if ([@"onPageEnd" isEqualToString:call.method]){
//        NSString* pageName = arguments[0];
//        [MobClick beginLogPageView:pageName];
        result(nil);
    }
    else if ([@"reportError" isEqualToString:call.method]){
//        NSLog(@"reportError API not existed ");
        result(nil);
     }
    else{
        resultCode = NO;
    }
    return resultCode;
}

@end

//@implementation UmengSdkPluginPlugin
//+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
//  FlutterMethodChannel* channel = [FlutterMethodChannel
//      methodChannelWithName:@"umeng_sdk"
//            binaryMessenger:[registrar messenger]];
//  UmengSdkPluginPlugin* instance = [[UmengSdkPluginPlugin alloc] init];
//  [registrar addMethodCallDelegate:instance channel:channel];
//}
//
//- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
//
//    BOOL resultCode = [UmengSdkPluginForUMCommon handleMethodCall:call result:result];
//    if (resultCode) return;
//
//    resultCode = [UmengSdkPluginForAnalytics handleMethodCall:call result:result];
//    if (resultCode) return;
//
//    result(FlutterMethodNotImplemented);
//}

//@end
