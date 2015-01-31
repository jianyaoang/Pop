//
//  ViewController.m
//  FB Pop Animation
//
//  Created by Jian Yao Ang on 1/31/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

#import <POP.h>
#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *popButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)onPopButtonPressed:(id)sender
{
    POPSpringAnimation *springAnimation = [POPSpringAnimation animation];
    
    springAnimation.property = [POPAnimatableProperty propertyWithName:kPOPViewFrame];
    springAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(90, 100, 140, 140)];
    springAnimation.springSpeed = 3.5;
    springAnimation.springBounciness = 30;
    springAnimation.name = @"springy";
    springAnimation.delegate = self;
    
    [self.popButton pop_addAnimation:springAnimation forKey:@"springy"];
}


@end
