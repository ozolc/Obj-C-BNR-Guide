//
//  main.m
//  Stringz
//
//  Created by Maksim Nosov on 15/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSMutableString *str = [[NSMutableString alloc] init];
//        for (int i = 0; i < 10; i++) {
//            [str appendString:@"Aaron is cool!\n"];
//        }
//
//        // Declare a pointer to an NSError object, but do not instantiate it.
//        // The NSError instnce will only be created if there is, in fact, an error.
//        NSError *error;
//
//        // Pass the NSError ponter by referrence to the NSString method
//        BOOL success = [str writeToFile:@"/tmp/cool.txt"
//                             atomically:YES
//                               encoding:NSUTF8StringEncoding
//                                  error:&error];
//
//        // Test the returned BOOL, and query the NSError if the write failed
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
//        }
  
        NSError *error;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"                encoding:NSASCIIStringEncoding error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str);
        }
    
    }
    return 0;
}
