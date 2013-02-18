//
//  FourthViewController.m
//  navigationBarController
//
//  Created by Evangelos Georgiou on 18/02/2013.
//  Copyright (c) 2013 Evangelos Georgiou. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (IBAction) buttonPressed:(id)sender
{
    
    switch ([sender tag]) {
        case 0:
            NSLog(@"button with tag: 0 pressed - push to root");
            [self.navigationController popToRootViewControllerAnimated:YES];
            break;
        
        case 1:
            NSLog(@"button with tag: 1 pressed - push to 2nd page");
            [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
            break;
        
        case 2:
            NSLog(@"button with tag: 2 pressed - push to 3rd page");
            [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
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
    
    self.title = @"Forth Page";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
