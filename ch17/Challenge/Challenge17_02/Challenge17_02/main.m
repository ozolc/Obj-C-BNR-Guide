//
//  main.m
//  Challenge17_02
//
//  Created by Maksim Nosov on 12/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString = [NSString stringWithContentsOfFile: @"/usr/share/dict/propernames" encoding: NSUTF8StringEncoding error: NULL];
        
        NSString *wordString = [NSString stringWithContentsOfFile: @"/usr/share/dict/words" encoding: NSUTF8StringEncoding error: NULL];
        
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString: @"\n"];
        NSArray *words = [wordString componentsSeparatedByString: @"\n"];
        
        // Go through the array one string at a time
        
        int i = 0;
        
        NSLog(@"(words)\t\t(names)");
        
        for (NSString *n in names) {
            
            // Check occurence of n in words
            if ([words containsObject:n.lowercaseString]) {
                NSLog(@"%@\t\t%@", n, n);
                i++;
            }
        }
        NSLog(@"Total equal words in both files - %d", i);
    }
    return 0;
}
