//
//  main.m
//  Challenge15_01
//
//  Created by Maksim Nosov on 12/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *listOfNames = @"Hello world Maksim Nosov"; // a long list of names
        NSString *name = @"maksim";
        NSRange match = [listOfNames localizedStandardRangeOfString:name];
        if (match.location == NSNotFound) {
            NSLog(@"No math found!");
            // Other actions to be taken
        } else {
            NSLog(@"Match found!");
            // Other actions to be taken
        }
    }
    return 0;
}
