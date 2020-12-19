//
//  JYMonitorRunloop.h
//  Test-Runloop监控卡顿
//
//  Created by 王笑宇 on 2020/12/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JYMonitorRunloop : NSObject

+ (instancetype)shared;

- (void)beginMointor;

@end

NS_ASSUME_NONNULL_END
