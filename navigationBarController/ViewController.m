//
//  ViewController.m
//  navigationBarController
//
//  Created by Evangelos Georgiou on 18/02/2013.
//  Copyright (c) 2013 Evangelos Georgiou. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPressed:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    UINavigationController *navigationBarController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    switch ([sender tag])
    {
        case 0:
            NSLog(@"button with tag: 0 pressed - push");
            [self.navigationController pushViewController:viewController animated:YES];
            
            break;
        case 1:
            NSLog(@"button with tag: 1 pressed - present");
            [self presentViewController:navigationBarController animated:YES completion:nil];
            
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"First Page";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
