//
//  BNREmployee.m
//  BMITime
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    // Is assets nil?
    if (!_assets) {
        
        // Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (void)removeAsset:(BNREmployee *)a
{
    // Test if _assets is nil or zero
    
    if (_assets == nil || _assets == 0)
    {
        NSLog(@"Employee ID:%u has no assets", self.employeeID);
        return;
    }
    
    // When assets count reaches zero, then exit the loop
    // i is not incremented in this loop
    
    for (int i = 0; i < [_assets count];)
    {
        [_assets removeObjectAtIndex:i];
    }
}

- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment
{
    // Do i have non-nil hireDate?
    if (self.hireDate) {
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;   // Seconds per year
    } else {
        return 0;
    }
}

- (float)bodyMassIndex
{
//    return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets",
            self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
