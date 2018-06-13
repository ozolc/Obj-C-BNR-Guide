//
//  main.m
//  Challenge17_01
//
//  Created by Maksim Nosov on 12/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *groceries = [NSMutableArray arrayWithObjects: @"Load of bread", @"Container of milk", @"Stick of butter", nil];
        
        NSUInteger groceryCount = [groceries count];
        
        NSLog(@"My grocery list is:");
        for (int i = 0; i < groceryCount; i++) {
            NSLog(@"%@", groceries[i]);
        }
    }
    return 0;
}
