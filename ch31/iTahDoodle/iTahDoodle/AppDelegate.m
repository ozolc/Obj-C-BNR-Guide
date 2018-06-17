//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by Maksim Nosov on 16/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

// Helper function to fetch the path to our to-do data stored on disk
NSString *DocPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                            NSUserDomainMask,
                                                            YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)WriteToFile {
    NSLog(@"Saving a dataset");
    [self.tasks writeToFile:DocPath() atomically:YES];
}

#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Load an existing dataset or create a new one
    NSArray *plist = [NSArray arrayWithContentsOfFile:DocPath()];
    if (plist) {
        // We have a dataset; copy it into tasks
        NSLog(@"Loading dataset");
        self.tasks = [plist mutableCopy];
    } else {
        // There is no dataset; create an empty array
        NSLog(@"Create an empty dataset");
        self.tasks = [NSMutableArray array];
    }
    
    // Create and configure the UIWindow instance
    // CGRect is a struct with an origin (x, y) and a size (width, height)
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
    self.window = theWindow;
    
    // Finalize the window and put it on the screen
    self.window.rootViewController = [[UIViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Define the frame rectangle of the three UI elements
    // CGRectMake() creates a CGRect from (x, y, width, height)
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Create and configure the UITableView instance
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // Make the AppDelegate the table view's dataSource
    self.taskTable.dataSource = self;
    
    // Tell the table view which class to instantiate whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    // Create and configure the UITextField instance where new tasks will be entered
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    // Create and configure the UIButton instance
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    
    // Give the button a title
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    // Set the target and action for the Insert button
    [self.insertButton addTarget:self
                         action:@selector(addTask:)
               forControlEvents:UIControlEventTouchUpInside];
    
    // Add our three UI elements to the window
    [self.window.rootViewController.view addSubview:self.taskTable];
    [self.window.rootViewController.view addSubview:self.taskField];
    [self.window.rootViewController.view addSubview:self.insertButton];
    
    
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Save our task array to disk
    [self WriteToFile];
}

#pragma mark - Actions

- (void)addTask:(id)sender
{
    // Get the task
    NSString *text = [self.taskField text];
    
    // Quit here if taskField is empty
    if ([text length] == 0) {
        return;
    }
    
    // Add it to the working array
    [self.tasks addObject:text];
    
    // Refresh the table so that the new item shows up
    [self.taskTable reloadData];
    
    // Save our task array to disk
    [self WriteToFile];
    
    // Clear out the text field
    [self.taskField setText:@""];
    // Dismiss the keyboard
    [self.taskField resignFirstResponder];
    
}

#pragma mark - Table view management

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Because this table view only has one section,
    // the number of rows in it is equal to the number
    // of items in the task array
    return [self.tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // To improve performance, this method first checks
    // for an existing cell object that we can reuse
    // If there isn't one, then a new cell is created
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    // Then we (re)configure the cell based on the model object,
    // in this case the task array, ...
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    
    // ... and hand the properly configured cell back to the table view
    return c;
}

@end
