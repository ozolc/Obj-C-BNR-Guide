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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an empty mutable array
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        // Create three instance BNRStockHolding
        BNRStockHolding *s1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *s2 = [[BNRStockHolding alloc] init];
        BNRStockHolding *s3 = [[BNRStockHolding alloc] init];
        
        BNRForeignStockHolding *fs1 = [[BNRForeignStockHolding alloc] init];
        BNRForeignStockHolding *fs2 = [[BNRForeignStockHolding alloc] init];
        
        // Setting values for instances
        [s1 setNameOfCompany:@"AEROFLOT"];
        [s1 setPurchasedSharePrice:2.30];
        [s1 setCurrentSharePrice:4.50];
        [s1 setNumberOfShares:40];
        
        [s2 setNameOfCompany:@"ALROSA"];
        [s2 setPurchasedSharePrice:12.19];
        [s2 setCurrentSharePrice:10.56];
        [s2 setNumberOfShares:90];
        
        [s3 setNameOfCompany:@"GAZPROM"];
        [s3 setPurchasedSharePrice:45.10];
        [s3 setCurrentSharePrice:49.51];
        [s3 setNumberOfShares:210];
        
        // With conversionRate from BNRForeignStockHolding
        [fs1 setNameOfCompany:@"AEROFLOT-FOREIGN"];
        [fs1 setPurchasedSharePrice:2.30];
        [fs1 setCurrentSharePrice:4.50];
        [fs1 setNumberOfShares:40];
        [fs1 setConversionRate:0.96];
        
        [fs2 setNameOfCompany:@"ALROSA-FOREIGN"];
        [fs2 setPurchasedSharePrice:12.19];
        [fs2 setCurrentSharePrice:10.56];
        [fs2 setNumberOfShares:90];
        [fs2 setConversionRate:0.96];
        
        // Filling an array with instancies
        [array addObject:s1];
        [array addObject:s2];
        [array addObject:s3];
        [array addObject:fs1];
        [array addObject:fs2];
        
        for (BNRStockHolding *share in array) {
            NSLog(@"Company \"%@\". Price for one share is %.2f. Total value is %.2f\n", [share nameOfCompany], [share costInDollars], [share valueInDollars]);
        }
    }
    return 0;
}
