//
//  FirstViewController.m
//  ScrollView+PageControl
//
//  Created by Mac on 13-6-6.
//  Copyright (c) 2013年 Mac. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
    [self.view setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
    UILabel *aLabel =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 20)];
    [aLabel setText:@"123"];
    [self.view addSubview:aLabel];
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [aButton setFrame:CGRectMake(100, 100, 60, 30)];
    [aButton setTitle:@"abc" forState:UIControlStateNormal];
    [self.view addSubview:aButton];
    [aLabel release];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
