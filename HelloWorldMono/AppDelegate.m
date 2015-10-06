//
//  AppDelegate.m
//  HelloWorldMono
//
//  Created by Airatch on 9/29/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, strong) IBOutlet MainViewController* mainViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.mainViewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    
    
    [self.window.contentView addSubview:self.mainViewController.view];
    self.mainViewController.view.frame= ((NSView*)self.window.contentView).bounds;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
