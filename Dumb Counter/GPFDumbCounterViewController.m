//
//  GPFDumbCounterViewController.m
//  Dumb Counter
//
//  Created by Greg Fiumara on 11/26/13.
//  Copyright (c) 2013 Greg Fiumara. All rights reserved.
//

#import "GPFDumbCounterViewController.h"

@interface GPFDumbCounterViewController ()

@property (nonatomic, assign) NSInteger incrementValue;
@property (nonatomic, assign) NSInteger totalValue;

@end

@implementation GPFDumbCounterViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];

	[self resetCounterValues];
	[self updateCounterDisplay];
}

#pragma mark - Math

- (void)resetCounterValues
{
	self.incrementValue = 0;
	self.totalValue = 0;
}

- (void)updateCounterDisplay
{
	self.incrementLabel.text = [@(self.incrementValue) stringValue];
	self.totalLabel.text = [@(self.totalValue) stringValue];
}

#pragma mark - Button Actions

- (IBAction)decrementButtonPressed:(UIButton *)sender
{
	self.incrementValue -= 1;
	[self updateCounterDisplay];
}

- (IBAction)incrementButtonPressed:(UIButton *)sender
{
	self.incrementValue += 1;
	[self updateCounterDisplay];
}

- (IBAction)addButtonPressed:(UIButton *)sender
{
	self.totalValue += self.incrementValue;
	[self updateCounterDisplay];
}

#pragma mark - Shake Recognition

- (BOOL)canBecomeFirstResponder
{
	return (YES);
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
	if (motion == UIEventSubtypeMotionShake) {
		[self resetCounterValues];
		[self updateCounterDisplay];
	}
}

@end
