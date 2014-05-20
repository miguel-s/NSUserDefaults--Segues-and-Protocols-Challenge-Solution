//
//  MSViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Miguel Serrano on 20/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSViewController : UIViewController

@property (nonatomic) NSString *username;
@property (nonatomic) NSString *password;

@property (strong, nonatomic) IBOutlet UILabel *viewControllerUsername;
@property (strong, nonatomic) IBOutlet UILabel *viewControllerPassword;

@end
