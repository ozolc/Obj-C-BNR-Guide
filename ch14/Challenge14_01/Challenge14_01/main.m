//
//  main.m
//  Challenge14_01
//
//  Created by Maksim Nosov on 12/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Figure out how many seconds i have been alive.
        
        // Creating a new date object that is set to my birthday.
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        comps.year = 1983;
        comps.month = 06;
        comps.day = 15;
        comps.hour = 03;
        comps.minute = 00;
        comps.second = 00;
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents: comps];
        
        // Measuring time in seconds since *dateOfBirth
        NSDate *today = [[NSDate alloc] init];
        double life = [today timeIntervalSinceDate: dateOfBirth];
        
        NSLog(@"Since my birthday have passed %0.f", life);
        
    }
    return 0;
}
