//
//  MSCreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Miguel Serrano on 20/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol MSCreateAccountViewControllerDelegate <NSObject>

- (void)didCancel;
- (void)didCreateAccount;

@end

@interface MSCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <MSCreateAccountViewControllerDelegate> delegate;

- (IBAction)buttonCreateAccount:(UIButton *)sender;
- (IBAction)buttonCancel:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *createAccountUsername;
@property (strong, nonatomic) IBOutlet UITextField *createAccountPassword;
@property (strong, nonatomic) IBOutlet UITextField *createAccountConfirmPassword;

@end
