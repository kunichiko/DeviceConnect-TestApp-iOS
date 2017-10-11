#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "DConnectApiEntity.h"
#import "DConnectApiSpec.h"
#import "DConnectAuthorizationProfile.h"
#import "DConnectAvailabilityProfile.h"
#import "DConnectBaseCacheController.h"
#import "DConnectBatteryProfile.h"
#import "DConnectCanvasProfile.h"
#import "DConnectConnectionProfile.h"
#import "DConnectDBCacheController.h"
#import "DConnectDeviceOrientationProfile.h"
#import "DConnectDevicePlugin.h"
#import "DConnectEvent.h"
#import "DConnectEventCacheController.h"
#import "DConnectEventHelper.h"
#import "DConnectEventManager.h"
#import "DConnectFileCacheController.h"
#import "DConnectFileDescriptorProfile.h"
#import "DConnectFileManager.h"
#import "DConnectFileProfile.h"
#import "DConnectGeolocationProfile.h"
#import "DConnectKeyEventProfile.h"
#import "DConnectLightProfile.h"
#import "DConnectManager.h"
#import "DConnectMediaPlayerProfile.h"
#import "DConnectMediaStreamRecordingProfile.h"
#import "DConnectMemoryCacheController.h"
#import "DConnectMessage.h"
#import "DConnectMessageFactory.h"
#import "DConnectNotificationProfile.h"
#import "DConnectPhoneProfile.h"
#import "DConnectPluginSpec.h"
#import "DConnectProfile.h"
#import "DConnectProfileProvider.h"
#import "DConnectProfileSpec.h"
#import "DConnectProximityProfile.h"
#import "DConnectRequestMessage.h"
#import "DConnectResponseMessage.h"
#import "DConnectSDK.h"
#import "DConnectService.h"
#import "DConnectServiceDiscoveryProfile.h"
#import "DConnectServiceInformationProfile.h"
#import "DConnectServiceListener.h"
#import "DConnectServiceListViewController.h"
#import "DConnectServiceManager.h"
#import "DConnectServiceProvider.h"
#import "DConnectSettingProfile.h"
#import "DConnectSettings.h"
#import "DConnectSpecConstants.h"
#import "DConnectSystemProfile.h"
#import "DConnectTouchProfile.h"
#import "DConnectURIBuilder.h"
#import "DConnectUtil.h"
#import "DConnectVibrationProfile.h"

FOUNDATION_EXPORT double DConnectSDKVersionNumber;
FOUNDATION_EXPORT const unsigned char DConnectSDKVersionString[];

