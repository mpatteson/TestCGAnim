//
//  ViewController.h
//  TestCGAnim
//
//  Created by Mike Patteson on 01/03/2013.
//  Copyright (c) 2013 Mike Patteson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet    UIView  *roundedView;
    
}

-(IBAction)enlargeCorners;
-(IBAction)reduceCorners;

@end
