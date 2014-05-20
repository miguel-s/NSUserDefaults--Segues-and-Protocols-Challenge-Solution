//
//  MSCreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Miguel Serrano on 20/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSCreateAccountViewController.h"

@interface MSCreateAccountViewController ()

@end

@implementation MSCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonCreateAccount:(UIButton *)sender {
    if(self.createAccountUsername.text.length > 0 && self.createAccountPassword.text.length > 0 && self.createAccountConfirmPassword.text.length > 0) {
        if([self.createAccountPassword.text isEqualToString:self.createAccountConfirmPassword.text]) {
            [[NSUserDefaults standardUserDefaults] setObject:self.createAccountUsername.text forKey:USER_NAME];
            [[NSUserDefaults standardUserDefaults] setObject:self.createAccountPassword.text forKey:USER_PASSWORD];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Alert" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            [alert show];
        }
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Alert" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
    [self.delegate didCreateAccount];
}

- (IBAction)buttonCancel:(UIButton *)sender {
    [self.delegate didCancel];
}
@end
