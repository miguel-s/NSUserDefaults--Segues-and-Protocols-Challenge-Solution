//
//  MSSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Miguel Serrano on 20/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSSignInViewController.h"

@interface MSSignInViewController ()

@end

@implementation MSSignInViewController

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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([sender isKindOfClass:[MSSignInViewController class]]) {
        if([segue.destinationViewController isKindOfClass:[MSCreateAccountViewController class]]) {
            MSCreateAccountViewController *nextVC = segue.destinationViewController;
            nextVC.delegate = self;
        }
    }
    
    if([sender isKindOfClass:[MSSignInViewController class]]) {
        if([segue.destinationViewController isKindOfClass:[MSViewController class]]) {
            MSViewController *nextVC = segue.destinationViewController;
            nextVC.username = [[NSUserDefaults standardUserDefaults] stringForKey:USER_NAME];
            nextVC.password = [[NSUserDefaults standardUserDefaults] stringForKey:USER_PASSWORD];
        }
    }
}

- (IBAction)buttonCreateAccount:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewController" sender:self];
}

- (IBAction)buttonLogin:(UIButton *)sender {
    
    NSString *username = [[NSUserDefaults standardUserDefaults] stringForKey:USER_NAME];
    NSString *pasword = [[NSUserDefaults standardUserDefaults] stringForKey:USER_PASSWORD];
    
    if([self.signInUsername.text isEqualToString:username] && [self.signInPassword.text isEqualToString:pasword]) {
        [self performSegueWithIdentifier:@"toViewController" sender:self];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Alert" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
}

#pragma mark - MSCreateAccountViewController Delegate

- (void)didCancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didCreateAccount {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
