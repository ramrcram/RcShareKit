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

#define FB 1
#define WA 2
#define FBM 3
#define IG 4
#define IM 5
#define TW 6

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
    
    ShareHelper* sHelper = [ShareHelper shareHelperInit];
    sHelper.parentviewcontroller = self.parentViewController;
    
    switch (((UIButton*)sender).tag) {
        case FB:
            [sHelper shareAction:FACEBOOK ShareText:@"Hey ..My share"
                      ShareImage:self.parentViewController.imgShare.image completion:^(BOOL status) {
                
            }];
            break;
        case WA:
            [sHelper shareAction:WHATSAPP ShareText:@"Hey ..My share"
                      ShareImage:self.parentViewController.imgShare.image completion:^(BOOL status) {
                          
                      }];
            break;
        case FBM:
            [sHelper shareAction:FACEBOOKMESSANGER ShareText:@"Hey ..My share"
                      ShareImage:self.parentViewController.imgShare.image completion:^(BOOL status) {
                          
                      }];
            break;
        case IG:
            [sHelper shareAction:INSTAGRAM ShareText:@"Hey ..My share"
                      ShareImage:self.parentViewController.imgShare.image completion:^(BOOL status) {
                          
                      }];
            break;
        case IM:
            [sHelper shareAction:MESSAGE ShareText:@"Hey ..My share"
                      ShareImage:self.parentViewController.imgShare.image completion:^(BOOL status) {
                          
                      }];
            break;
        case TW:
            [sHelper shareAction:TWITTER ShareText:@"Hey ..My share"
                      ShareImage:self.parentViewController.imgShare.image completion:^(BOOL status) {
                          
                      }];
            break;
        default:
            break;
    }
    
}
- (IBAction)btnCancel:(id)sender {
    [self.parentViewController CloseShareWithAnimation];
}

@end
