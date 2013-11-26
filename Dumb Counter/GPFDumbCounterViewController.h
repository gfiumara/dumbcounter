//
//  GPFDumbCounterViewController.h
//  Dumb Counter
//
//  Created by Greg Fiumara on 11/26/13.
//  Copyright (c) 2013 Greg Fiumara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GPFDumbCounterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *incrementLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UIButton *incrementButton;
@property (weak, nonatomic) IBOutlet UIButton *decrementButton;
@property (weak, nonatomic) IBOutlet UIButton *addButton;

- (IBAction)decrementButtonPressed:(UIButton *)sender;
- (IBAction)incrementButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;

@end
