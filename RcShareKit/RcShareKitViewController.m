//
//  RcShareKitViewController.m
//  RcShareKit
//
//  Created by Ramesh on 12/01/16.
//  Copyright © 2016 rubictechnologies. All rights reserved.
//

#import "RcShareKitViewController.h"

@interface RcShareKitViewController ()

@end

@implementation RcShareKitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark Events

- (IBAction)btnShareButtonClick:(id)sender {
    
}
- (IBAction)btnCancel:(id)sender {
    [self.parentViewController CloseShareWithAnimation];
}

@end
