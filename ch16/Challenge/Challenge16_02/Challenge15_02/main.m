//
//  main.m
//  Challenge15_02
//
//  Created by Maksim Nosov on 12/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Type max number");
        const char *number = readline(NULL);
        
        NSString *conv = [NSString stringWithUTF8String: number];
        int i = [conv intValue];
        
        for (; i >= 0; i -= 3) {
            if (i % 5 == 0) {
                NSLog(@"%d Found one!", i);
            } else {
                NSLog(@"%d", i);
            }
        }
    }
    return 0;
}
