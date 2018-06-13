//
//  main.m
//  BMITime
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of BNREmployee
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd-MM-yyyy"];
//        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
//        [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
        mikey.hireDate = [dateFormatter dateFromString:@"02-08-2010"];
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilos", mikey.heightInMeters,  mikey.weightInKilos);
        NSDate *date = mikey.hireDate;
        NSLog(@"mikey has a height of %.2f", mikey.heightInMeters);
        NSLog(@"%@ hired on %@", mikey, date);
        
        // Log the body mass index
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
        
    }
    return 0;
}
