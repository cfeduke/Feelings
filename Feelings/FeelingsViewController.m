//
//  FeelingsViewController.m
//  Feelings
//
//  Created by Charles Feduke on 9/14/11.
//  Copyright 2011 Deployment Zone. All rights reserved.
//

#import "FeelingsViewController.h"

@implementation FeelingsViewController
@synthesize textView;
@synthesize moodKeyboard;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSBundle mainBundle] loadNibNamed:@"MoodKeyboard" owner:self options:nil];
    
    self.textView.inputView = self.moodKeyboard;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

-(void)updateTextViewWithMood:(NSString *) mood {
    self.textView.text = mood;
    [self.textView resignFirstResponder];
}

-(IBAction)didTapAngryKey {
    [self updateTextViewWithMood:@">:("];
}

-(IBAction)didTapWinkKey {
    [self updateTextViewWithMood:@";)"];
}

-(IBAction)didTapSadKey {
    [self updateTextViewWithMood:@":("];
}

-(IBAction)didTapHappyKey {
    [self updateTextViewWithMood:@":)"];
}
@end
