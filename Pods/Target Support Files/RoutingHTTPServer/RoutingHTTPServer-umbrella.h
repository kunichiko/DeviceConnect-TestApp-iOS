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

#import "HTTPResponseProxy.h"
#import "Route.h"
#import "RouteRequest.h"
#import "RouteResponse.h"
#import "RoutingConnection.h"
#import "RoutingHTTPServer.h"

FOUNDATION_EXPORT double RoutingHTTPServerVersionNumber;
FOUNDATION_EXPORT const unsigned char RoutingHTTPServerVersionString[];

