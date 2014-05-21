//
//  MSViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Miguel Serrano on 20/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSViewController.h"

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.viewControllerUsername.text = self.username;
    self.viewControllerPassword.text = self.password;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewControllerBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
