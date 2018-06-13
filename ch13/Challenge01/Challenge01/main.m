//
//  main.m
//  Challenge01
//
//  Created by Maksim Nosov on 12/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *stringHost = [host localizedName];
        
        NSLog(@"Hostname this computer is %@", stringHost);
    }
    return 0;
}
