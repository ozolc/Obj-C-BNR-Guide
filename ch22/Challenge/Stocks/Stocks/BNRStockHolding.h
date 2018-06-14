//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) NSString *nameOfCompany;
@property (nonatomic) float purchasedSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *ticker;

- (float)costInDollars;  // purchaseSharePrice * numberOfShares
- (float)valueInDollars;    // currentSharePrice * numberfShares

@end
