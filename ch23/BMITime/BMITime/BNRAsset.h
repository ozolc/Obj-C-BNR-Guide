//
//  BNRAsset.h
//  BMITime
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject
@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end
