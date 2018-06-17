//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Maksim Nosov on 16/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that you will use to get a path
// to the location on disk where you can save the to-do list
NSString *DocPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end

