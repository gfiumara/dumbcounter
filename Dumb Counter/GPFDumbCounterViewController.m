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

#pragma mark - View 

- (void)viewDidLoad
{
	[super viewDidLoad];

	self.incrementValue = 0;
	self.totalValue = 0;

	self.incrementLabel.text = [@(self.incrementValue) stringValue];
	self.totalLabel.text = [@(self.totalValue) stringValue];
}

#pragma mark - Button Actions

- (IBAction)decrementButtonPressed:(UIButton *)sender
{
	self.incrementValue -= 1;
	self.incrementLabel.text = [@(self.incrementValue) stringValue];
}

- (IBAction)incrementButtonPressed:(UIButton *)sender
{
	self.incrementValue += 1;
	self.incrementLabel.text = [@(self.incrementValue) stringValue];
}

- (IBAction)addButton:(UIButton *)sender
{
	self.totalValue += self.incrementValue;
	self.totalLabel.text = [@(self.totalValue) stringValue];
}

@end
