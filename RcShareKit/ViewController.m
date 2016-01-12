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
    holderViewFrame.origin.y = - holderViewFrame.size.height;
    self.RcShareViewHolder.frame = holderViewFrame;
}

@end
