//
//  main.m
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an empty mutable array
        BNRPortfolio *holdings = [[BNRPortfolio alloc] init];
        
        // Generate names for stocks and ticker labels
        NSArray *names = @[@"Aeroflot", @"Alrosa", @"Gazprom"];
        NSArray *ticker = @[@"ARF", @"ALR", @"GZP"];
        
        for (int i = 0; i < [names count]; i++) {
            BNRStockHolding *newStock = [[BNRStockHolding alloc] init];
            
            NSString *stockName = [names objectAtIndex:i];
            newStock.nameOfCompany = [stockName uppercaseString];
            newStock.purchasedSharePrice = 2.30 + i * (arc4random() % 3);
            newStock.currentSharePrice = 4.50 + i * (arc4random() % 2);
            newStock.numberOfShares = 15 + i * (arc4random() % 4);
            NSString *lTicker = [ticker objectAtIndex:i];
            newStock.ticker = [lTicker uppercaseString];
            
            [holdings addHoldings:newStock];
            NSLog(@"%@", newStock);
            
        }
        
        // Generate names for foreign stocks and ticker labels
        NSArray *fNames = @[@"Aeroflot-Foreign", @"Alrosa-Foreign", @"Gazprom-Foreign"];
        NSArray *fTickers = @[@"AERO-F", @"ALROSA-F", @"Gazprom-F"];
        
        for (int i = 0; i < [fNames count]; i++) {
            BNRForeignStockHolding *foreignStock = [[BNRForeignStockHolding alloc] init];
            
            NSString *foreignStockName = [fNames objectAtIndex:i];
            foreignStock.nameOfCompany = [foreignStockName uppercaseString];
            foreignStock.purchasedSharePrice = 3.15 + i * (arc4random() % 3);
            foreignStock.currentSharePrice = 5.15 + i * (arc4random() % 2);
            foreignStock.numberOfShares = 10 + i * (arc4random() % 4);
            foreignStock.conversionRate = 0.50 + (0.15 * i);
            NSString *ticker = [fTickers objectAtIndex:i];
            foreignStock.ticker = [ticker uppercaseString];
            
            [holdings addForeignHoldings:foreignStock];
            NSLog(@"%@", foreignStock);
        }

        NSLog(@"%@", holdings);
        NSLog(@"Top three most valueable: \n%@", [holdings getTopThreeValuableHoldings]);
        NSLog(@"All of stock holdings sorted alphabetically by ticker (symbol): \n %@", [holdings getSortedBySymbol]);
    }
    return 0;
}
