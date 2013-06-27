//
//  ViewController.m
//  ScrollView+PageControl
//
//  Created by Mac on 13-6-4.
//  Copyright (c) 2013年 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
    scroll =[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 460)];
    scroll.pagingEnabled = YES;
    scroll.showsHorizontalScrollIndicator = NO;
//    scroll.bounces = NO;
    scroll.contentSize=CGSizeMake(scroll.frame.size.width*3, scroll.frame.size.height);
    scroll.delegate = self;
    
    UIView *aView = [[UIView alloc] init];
    aView.frame=CGRectMake(0, 0, scroll.frame.size.width, self.view.frame.size.height);
    [aView setBackgroundColor:[UIColor redColor]];
    
    UIView *bView = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width, 0, scroll.frame.size.width, scroll.frame.size.height)];
    [bView setBackgroundColor:[UIColor blueColor]];
    
    UIView *cView = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*2, 0, scroll.frame.size.width, scroll.frame.size.height)];
    [cView setBackgroundColor:[UIColor yellowColor]];
    [scroll addSubview:aView];
    [scroll addSubview:bView];
    [scroll addSubview:cView];
    
    pageControl =[[UIPageControl alloc]initWithFrame:CGRectMake(108, 400, 100, 50)];
    pageControl.backgroundColor = [UIColor clearColor];
    pageControl.highlighted = YES;
    pageControl.userInteractionEnabled = NO;
    pageControl.numberOfPages = 3;
    
    [pageControl addTarget:self action:@selector(pagechanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:scroll];
    [self.view addSubview:pageControl];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)pagechanged:(UIPageControl *)sender
{
    int page = pageControl.currentPage;
    
    [scroll setContentOffset:CGPointMake(320*page, 0) animated:YES];
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int index = fabs(scroll.contentOffset.x/scroll.frame.size.width);
    pageControl.currentPage = index;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
