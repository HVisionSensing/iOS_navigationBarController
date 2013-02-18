//
//  ThirdViewController.m
//  navigationBarController
//
//  Created by Evangelos Georgiou on 18/02/2013.
//  Copyright (c) 2013 Evangelos Georgiou. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (IBAction)buttonPressed:(id)sender
{
    NSLog(@"button pressed - push");
    
    FourthViewController *viewController = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    
    [self.navigationController pushViewController:viewController animated:YES];
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
    
    self.title = @"Third Page";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
