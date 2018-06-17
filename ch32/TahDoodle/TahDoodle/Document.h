//
//  Document.h
//  TahDoodle
//
//  Created by Maksim Nosov on 17/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;

@end

