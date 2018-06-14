//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    float p = [self purchasedSharePrice];
    int n = [self numberOfShares];
    return p * n;
}

- (float)valueInDollars
{
    float c = [self currentSharePrice];
    int n = [self numberOfShares];
    return c * n;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"You paid %.2f for %d shares in %@ (%@), valued at %.2f", self.costInDollars, self.numberOfShares, self.nameOfCompany, self.ticker, self.valueInDollars];
}

@end
