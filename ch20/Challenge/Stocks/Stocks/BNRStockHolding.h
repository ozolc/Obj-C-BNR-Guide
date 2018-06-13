//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    NSString *_nameOfCompany;
    float _purchasedSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (NSString *)nameOfCompany;
- (void)setNameOfCompany:(NSString *)name;
- (float)purchasedSharePrice;
- (void)setPurchasedSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)c;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

- (float)costInDollars;  // purchaseSharePrice * numberOfShares
- (float)valueInDollars;    // currentSharePrice * numberfShares

@end
