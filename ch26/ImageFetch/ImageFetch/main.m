//
//  main.m
//  ImageFetch
//
//  Created by Maksim Nosov on 15/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Download file from URL and saving one to file system
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        
        NSString *urlAddress = @"http://www.google.com/images/logos/ps_logo2.png";
        NSURL *url = [NSURL URLWithString:urlAddress];
        NSLog(@"Download image from %@", urlAddress);

         NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            NSLog(@"The file is %lu bytes", (unsigned long)[data length]);

            BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&error];

            if (written) {
                NSLog(@"Success downloading");
            } else {
                NSLog(@"In completionHandler: %@ error: %@", response, error);
                NSLog(@"write failed: %@", [error localizedDescription]);
            }
             
             // Read downoaded file from file system
             error = nil;
             NSData *readData = [[NSData alloc] initWithContentsOfFile:@"/tmp/google.png"
                                                               options:1 error:&error];
             if (!readData) {
                 NSLog(@"read failed: %@", [error localizedDescription]);
             } else {
                 NSLog(@"The file has been read from the disk has %lu bytes", (unsigned long)[readData length]);
             }
        }];
        
        [task resume];
        [runLoop run];
    }

    return 0;
}
