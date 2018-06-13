//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding


- (float)valueInDollars
{
    float c = [self currentSharePrice]  * self.conversionRate;
    int n = [self numberOfShares];
    return c * n;
}

- (float)costInDollars
{
    float p = [self purchasedSharePrice] * self.conversionRate;
    int n = [self numberOfShares];
    return p * n;
}

@end
