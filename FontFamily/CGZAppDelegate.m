//
//  CGZAppDelegate.m
//  FontFamily
//
//  Created by Carlos Gz on 03/11/13.
//  Copyright (c) 2013 Carlos Gz. All rights reserved.
//

#import "CGZAppDelegate.h"
#import "CGZFontsViewController.h"

@implementation CGZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Set Custom Aspect
    [self customizeAppearance];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    CGZFontsViewController *fontsVC = [[CGZFontsViewController alloc] initWithStyle:UITableViewStylePlain]; 
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:fontsVC];
    
    self.window.rootViewController = navVC;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void) customizeAppearance{
    
    UIColor *lightRed = [UIColor colorWithRed:218.0/255.0
                                        green:43.0/255.0
                                         blue:32.0/255.0
                                        alpha:1];

    UIColor *customGrey = [UIColor colorWithRed:214.0/255
                                          green:214.0/255.0
                                           blue:214.0/255.0
                                          alpha:1];
    
    [[UINavigationBar appearance] setBarTintColor:lightRed];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]]; // Customizing the Back button color
    
    [[UITableViewHeaderFooterView appearance] setTintColor:customGrey]; // section color

    
    // navigation bar tittle shadow
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:145.0/255.0
                                         green:145.0/255.0
                                          blue:145.0/255.0
                                         alpha:0.5];
    shadow.shadowOffset = CGSizeMake(0, 1);
    
    // Navigation bar font style
    [[UINavigationBar appearance] setTitleTextAttributes: @{NSForegroundColorAttributeName: [UIColor whiteColor],
                                                            NSShadowAttributeName: shadow,
                                                            NSFontAttributeName: [UIFont fontWithName:@"FiraSansLight-Italic" size:21.0]}];

    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent]; // show status bar white colored

    
   
    
}

@end
