//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Maksim Nosov on 14/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRStockHolding.h"

@interface BNRPortfolio : BNRStockHolding

- (float)totalValue;
- (float)totalCost;
- (void)addHoldings:(BNRStockHolding *)h;
- (void)addForeignHoldings:(BNRStockHolding *)hF;

@end
