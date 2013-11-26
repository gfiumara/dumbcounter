//
//  GPFAppDelegate.m
//  Dumb Counter
//
//  Created by Greg Fiumara on 11/26/13.
//  Copyright (c) 2013 Greg Fiumara. All rights reserved.
//

#import "GPFDumbCounterViewController.h"

#import "GPFAppDelegate.h"

static NSString * const kGPFDumbCounterViewControllerNIB = @"GPFDumbCounterView";

@implementation GPFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.backgroundColor = [UIColor whiteColor];

	self.window.rootViewController = [[GPFDumbCounterViewController alloc] initWithNibName:kGPFDumbCounterViewControllerNIB bundle:nil];

	[self.window makeKeyAndVisible];
	return (YES);
}

@end
