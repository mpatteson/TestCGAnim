//
//  ViewController.m
//  TestCGAnim
//
//  Created by Mike Patteson on 01/03/2013.
//  Copyright (c) 2013 Mike Patteson. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

#define cornerStart 25.f
#define cornerEnd 100.f

#define boxStart CGRectMake(234, 400, 300, 100)
#define boxEnd CGRectMake(134, 450, 500, 400)

-(IBAction)enlargeCorners {
    
    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    anim1.fromValue = [NSNumber numberWithFloat:cornerStart];
    anim1.toValue = [NSNumber numberWithFloat:cornerEnd];
    
    CAAnimationGroup *animate = [CAAnimationGroup animation];
    animate.duration = 1.0;
    animate.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animate.animations = [NSArray arrayWithObjects:anim1, nil];
    
    [roundedView.layer addAnimation:animate forKey:@"myAnimations"];
    
    roundedView.layer.cornerRadius = cornerEnd;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0f];
    [roundedView setFrame:boxEnd];
    [UIView commitAnimations];
    
}

-(IBAction)reduceCorners {
    
    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    anim1.fromValue = [NSNumber numberWithFloat:cornerEnd];
    anim1.toValue = [NSNumber numberWithFloat:cornerStart];
    
    CAAnimationGroup *animate = [CAAnimationGroup animation];
    animate.duration = 1.0;
    animate.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animate.animations = [NSArray arrayWithObjects:anim1, nil];
    
    [roundedView.layer addAnimation:animate forKey:@"myAnimations"];
    
    roundedView.layer.cornerRadius = cornerStart;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0f];
    [roundedView setFrame:boxStart];
    [UIView commitAnimations];
    
    
//    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
//    anim1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
//    anim1.fromValue = [NSNumber numberWithFloat:cornerEnd];
//    anim1.toValue = [NSNumber numberWithFloat:cornerStart];
//    anim1.duration = 1.0;
//    [roundedView.layer addAnimation:anim1 forKey:@"cornerRadius"];
//    roundedView.layer.cornerRadius = cornerStart;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    roundedView.layer.cornerRadius = cornerStart;
    roundedView.frame = boxStart;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
