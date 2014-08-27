//
//  ALIENAppDelegate.m
//  tabBarController
//
//  Created by AlienLi on 14-8-27.
//  Copyright (c) 2014年 AlienLi. All rights reserved.
//

#import "ALIENAppDelegate.h"

#import "RDVTabBarController.h"
#import "RDVTabBarItem.h"
#import "ALIENFirstTabController.h"
#import "ALIENSecondTabController.h"
#import "ALIENThirdTabController.h"
#import "ALIENFourthTabController.h"




@implementation ALIENAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    self.window.rootViewController =[self setupViewControllers];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
#pragma mark - RDVTabBarController setup

-(UIViewController *)setupViewControllers {
    
    UIStoryboard *myStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    ALIENFirstTabController *first = [myStoryBoard instantiateViewControllerWithIdentifier:@"ALIENFirstTabController"];
    UINavigationController *firstNavgationController = [[UINavigationController alloc] initWithRootViewController:first];
    
    ALIENSecondTabController *second = [myStoryBoard instantiateViewControllerWithIdentifier:@"ALIENSecondTabController"];
    UINavigationController *secondNavgationController = [[UINavigationController alloc] initWithRootViewController:second];
    
    ALIENThirdTabController *third = [myStoryBoard instantiateViewControllerWithIdentifier:@"ALIENThirdTabController"];
    UINavigationController *thirdNavgationController = [[UINavigationController alloc] initWithRootViewController:third];
    
    ALIENFourthTabController *fourth = [myStoryBoard instantiateViewControllerWithIdentifier:@"ALIENFourthTabController"];
     UINavigationController *fourthNavgationController = [[UINavigationController alloc] initWithRootViewController:fourth];
    
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    tabBarController.viewControllers = @[firstNavgationController,secondNavgationController,thirdNavgationController,fourthNavgationController];
    tabBarController.selectedIndex = 0;
    
    [self customizeTabBarForController:tabBarController];
    
    
    
    UIViewController *viewController =  tabBarController;
    return viewController;

}

- (void)customizeTabBarForController:(RDVTabBarController *)tabBarController {
    UIImage *finishedImage = [UIImage imageNamed:@"tabBarItemBG"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabBarItemBG"];
    NSArray *tabBarItemImages = @[@"first", @"second", @"third",@"fourth"];
    
    NSInteger index = 0;
    
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        index++;
    }
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

@end
