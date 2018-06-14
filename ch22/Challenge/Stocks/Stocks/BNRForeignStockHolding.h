//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

//  To multiply purchasePrice and currentPrice in local price by to get a price in US dollars
@property (nonatomic) float conversionRate;

@end
