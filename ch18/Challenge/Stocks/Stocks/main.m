//
//  main.m
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an empty mutable array
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        // Create three instance BNRStockHolding
        BNRStockHolding *s1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *s2 = [[BNRStockHolding alloc] init];
        BNRStockHolding *s3 = [[BNRStockHolding alloc] init];
        
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
        
        // Filling an array with instancies
        [array addObject:s1];
        [array addObject:s2];
        [array addObject:s3];
        
        for (BNRStockHolding *share in array) {
            NSLog(@"Company \"%@\". Price for one share is %.2f$. Total value in dollars %.2f$\n", [share nameOfCompany], [share costInDollars], [share valueInDollars]);
        }
    }
    return 0;
}
