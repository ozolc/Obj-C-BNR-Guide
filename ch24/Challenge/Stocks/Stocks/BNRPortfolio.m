//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Maksim Nosov on 14/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRPortfolio.h"

// A class extension
@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

@end

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

- (NSArray *)getTopThreeValuableHoldings
{
    // Get descending sorting in order to get the most valuable holdings at start.
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    // Sorting _holdings using created above descriptor
    NSArray *sortedArray = [_holdings sortedArrayUsingDescriptors:@[descriptor]];
    // Create range of three elements
    NSRange range = NSMakeRange(0, 3);
    // Get top three valuable holdings
    NSIndexSet *topThreeValuableHoldings = [NSIndexSet indexSetWithIndexesInRange:range];
    return [sortedArray objectsAtIndexes:topThreeValuableHoldings];
}

- (NSArray *)getSortedBySymbol
{
    // Create descriptor for sorting by ticker property
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"ticker" ascending:YES];
    // Apply descriptor for sorting array of share holders (_holdings)
    NSArray *sortedByTicker = [_holdings sortedArrayUsingDescriptors: @[descriptor]];
    return sortedByTicker;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Total value is %.2f and total cost is %.2f>",
            self.totalValue, self.totalCost];
}

@end
