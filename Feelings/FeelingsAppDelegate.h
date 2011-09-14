//
//  FeelingsAppDelegate.h
//  Feelings
//
//  Created by Charles Feduke on 9/14/11.
//  Copyright 2011 Deployment Zone. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FeelingsViewController;

@interface FeelingsAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FeelingsViewController *viewController;

@end
