//
//  main.m
//  Challenge30_01
//
//  Created by Maksim Nosov on 16/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Array for dictionary with all types
        NSMutableArray *mainArray = [[NSMutableArray alloc] init];
        
        // Create dictionary for storing all types
        NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
        
        // Create String
        [dictionary setObject:@"value01" forKey:@"String"];
        
        // Create Data
        [dictionary setObject:[NSData dataWithContentsOfFile:@"/etc/resolv.conf"] forKey:@"Data"];
        
        // Create Date
        [dictionary setObject:[NSDate date] forKey:@"Date"];
        
        // Create Integer
        [dictionary setObject:[NSNumber numberWithInt:15] forKey:@"Integer"];
        
        // Create Float
        [dictionary setObject:[NSNumber numberWithFloat:15.0] forKey:@"Float"];
        
        // Create Boolean
        [dictionary setObject:[NSNumber numberWithBool:YES] forKey:@"Boolean"];
        
        // Create Array
        [dictionary setObject:[NSArray arrayWithObjects:@"index01", @"index02", nil] forKey:@"Array"];
        
        // Add dictionary to mainArray
        [mainArray addObject:dictionary];
        
        // Write Property List to /tmp/temp.plist file
        [mainArray writeToFile:@"/tmp/temp.plist"
                         atomically:YES];
       
        // Read Property List from /tmp/temp.plist file
        NSArray *arrayFromFile = [NSArray arrayWithContentsOfFile:@"/tmp/temp.plist"];
        
        for (NSDictionary *d in arrayFromFile) {
            for(NSString *key in [d allKeys]) {
                NSLog(@"%@",[d objectForKey:key]);
            }
        }
    }
    return 0;
}
