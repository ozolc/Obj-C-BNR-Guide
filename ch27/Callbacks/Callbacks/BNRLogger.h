//
//  BNRLogger.h
//  Callbacks
//
//  Created by Maksim Nosov on 16/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
