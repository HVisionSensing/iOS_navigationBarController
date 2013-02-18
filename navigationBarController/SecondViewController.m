//
//  SecondViewController.m
//  navigationBarController
//
//  Created by Evangelos Georgiou on 18/02/2013.
//  Copyright (c) 2013 Evangelos Georgiou. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (IBAction) buttonPressed:(id)sender
{
    ThirdViewController *viewController = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    
    switch ([sender tag]) {
        case 0:
            NSLog(@"button with tag: 0 pressed - pop");
            [self dismissViewControllerAnimated:YES completion:nil];
            [self.navigationController popToRootViewControllerAnimated:YES];
            
            break;
        case 1:
            NSLog(@"button with tag: 1 pressed - push");
            [self.navigationController pushViewController:viewController animated:YES];
            
            break;
    }
}

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
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Second Page";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
