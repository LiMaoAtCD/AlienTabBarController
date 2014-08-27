//
//  ALIENFirstTabController.m
//  tabBarController
//
//  Created by AlienLi on 14-8-27.
//  Copyright (c) 2014年 AlienLi. All rights reserved.
//

#import "ALIENFirstTabController.h"
#import "RDVTabBarController.h"
#import "RDVTabBarItem.h"

@implementation ALIENFirstTabController
-(void)viewDidLoad
{
//    [[self rdv_tabBarItem] setBadgeValue:@"3"];
    
//    if (self.rdv_tabBarController.tabBar.translucent) {
//        UIEdgeInsets insets = UIEdgeInsetsMake(0,
//                                               0,
//                                               CGRectGetHeight(self.rdv_tabBarController.tabBar.frame),
//                                               0);
//        
//        self.view.contentInset = insets;
//        self.view.scrollIndicatorInsets = insets;
//    }
    self.navigationController.navigationBar.barTintColor = [UIColor clearColor];

}

@end
