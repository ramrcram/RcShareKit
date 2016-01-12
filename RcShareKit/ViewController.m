//
//  ViewController.m
//  RcShareKit
//
//  Created by Ramesh on 12/01/16.
//  Copyright © 2016 rubictechnologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [self prepareSubView];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Methods

-(void)prepareSubView{
    CGRect holderViewFrame = self.RcShareViewHolder.frame;
    holderViewFrame.origin.y = self.view.frame.size.height + holderViewFrame.size.height;
    self.RcShareViewHolder.frame = holderViewFrame;
}

-(void)openShareViewHolde{
    CGRect holderViewFrame = self.RcShareViewHolder.frame;
    holderViewFrame.origin.y = self.view.frame.size.height - holderViewFrame.size.height;
    self.RcShareViewHolder.frame = holderViewFrame;
}
-(void)closeShareViewHolde{
    CGRect holderViewFrame = self.RcShareViewHolder.frame;
    holderViewFrame.origin.y = self.view.frame.size.height + holderViewFrame.size.height;
    self.RcShareViewHolder.frame = holderViewFrame;
}

-(void)CloseShareWithAnimation{
    [UIView animateWithDuration:.6 delay:0 usingSpringWithDamping:100 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self closeShareViewHolde];
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark Events

- (IBAction)btnShareClick:(id)sender {
    
    [UIView animateWithDuration:.6 delay:0 usingSpringWithDamping:100 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self openShareViewHolde];
    } completion:^(BOOL finished) {
        
    }];

}


@end
