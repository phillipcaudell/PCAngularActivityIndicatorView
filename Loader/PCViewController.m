//
//  PCViewController.m
//  Loader
//
//  Created by Phillip Caudell on 13/08/2014.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.activityIndicator = [[PCAngularActivityIndicatorView alloc] initWithActivityIndicatorStyle:PCAngularActivityIndicatorViewStyleLarge];
    self.activityIndicator.color = [UIColor redColor];
    [self.view addSubview:self.activityIndicator];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.activityIndicator.center = self.view.center;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(handleStart:) userInfo:nil repeats:NO];
    [NSTimer scheduledTimerWithTimeInterval:7.0 target:self selector:@selector(handleStop:) userInfo:nil repeats:NO];
}

- (void)handleStart:(id)sender
{
    [self.activityIndicator startAnimating];
}

- (void)handleStop:(id)sender
{
    [self.activityIndicator stopAnimating];
}

@end
