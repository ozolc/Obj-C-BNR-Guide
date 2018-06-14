//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Maksim Nosov on 14/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRPortfolio.h"

@implementation BNRPortfolio

// Accessors for holdings properties
- (void)setHoldings:(NSArray *)h
{
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings
{
    return [_holdings mutableCopy];
}

- (void)addHoldings:(BNRStockHolding *)h
{
    // Is holdings nil?
    if (!_holdings) {
        
        // Create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:h];
}

- (void)addForeignHoldings:(BNRStockHolding *)hF
{
    // Is holdings nil?
    if (!_holdings) {
        
        // Create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:hF];
}

- (float)totalValue
{
    // Sum up total value of the StockHoldings
    float sum = 0;
    for (BNRStockHolding *h in _holdings) {
        sum += [h valueInDollars];
    }
    return sum;
}

- (float)totalCost
{
    // Sum up total cost of the StockHoldings
    float sum = 0;
    for (BNRStockHolding *h in _holdings) {
        sum += [h costInDollars];
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Total value is %.2f and total cost is %.2f>",
            self.totalValue, self.totalCost];
}

@end
