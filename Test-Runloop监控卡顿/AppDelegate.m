//
//  AppDelegate.m
//  Test-Runloop监控卡顿
//
//  Created by 王笑宇 on 2020/12/18.
//

#import "AppDelegate.h"
#import "JYMonitorRunloop.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[JYMonitorRunloop shared] beginMointor];
    return YES;
}



@end
