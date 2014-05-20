//
//  MSSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Miguel Serrano on 20/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSCreateAccountViewController.h"
#import "MSViewController.h"

@interface MSSignInViewController : UIViewController <MSCreateAccountViewControllerDelegate>

- (IBAction)buttonCreateAccount:(UIBarButtonItem *)sender;
- (IBAction)buttonLogin:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *signInUsername;
@property (strong, nonatomic) IBOutlet UITextField *signInPassword;

@end
