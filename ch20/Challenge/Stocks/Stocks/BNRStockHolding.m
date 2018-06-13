//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (NSString *) nameOfCompany
{
    return _nameOfCompany;
}

-(void) setNameOfCompany:(NSString *)name
{
    _nameOfCompany = [name uppercaseString];
}

- (float)purchasedSharePrice
{
    return _purchasedSharePrice;
}

-(void)setPurchasedSharePrice:(float)p
{
    _purchasedSharePrice = p;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)c
{
    _currentSharePrice = c;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}

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
@end
