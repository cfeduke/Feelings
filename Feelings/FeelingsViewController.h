//
//  FeelingsViewController.h
//  Feelings
//
//  Created by Charles Feduke on 9/14/11.
//  Copyright 2011 Deployment Zone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeelingsViewController : UIViewController

@property(nonatomic, retain) IBOutlet UIView *moodKeyboard;
@property(nonatomic, retain) IBOutlet UITextView *textView;

-(IBAction)didTapWinkKey;
-(IBAction)didTapHappyKey;
-(IBAction)didTapSadKey;
-(IBAction)didTapAngryKey;
@end
