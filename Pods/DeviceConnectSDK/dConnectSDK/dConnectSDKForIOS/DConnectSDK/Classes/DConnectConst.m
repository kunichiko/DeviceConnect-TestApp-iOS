//
//  DConnectConst.m
//  DConnectSDK
//
//  Created by Kunihiko Ohnaka on 2017/09/28.
//  Copyright © 2017年 NTT DOCOMO, INC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DConnectConst.h"

NSBundle* DCBundle() {
    NSBundle* bundle;
    
    bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"DConnectSDK_resources" ofType:@"bundle"]];
    if( bundle ) {
        return bundle;
    }
    bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:NSClassFromString(@"DConnectManager")]
                                       pathForResource:@"DConnectSDK_resources" ofType:@"bundle"]];
    return bundle;
}
