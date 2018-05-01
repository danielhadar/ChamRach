//
//  AppDelegate.m
//  ChamRach
//
//  Created by Daniel Hadar on 01/05/2018.
//  Copyright © 2018 Daniel Hadar. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window.rootViewController = [[MainViewController alloc] init];
  return YES;
}

@end
