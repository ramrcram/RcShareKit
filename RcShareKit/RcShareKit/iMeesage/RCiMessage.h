//
//  RCiMessage.h
//  RcShareKit
//
//  Created by Ramesh on 10/01/16.
//  Copyright © 2016 Ramesh R C. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMessageComposeViewController.h>

@interface RCiMessage : NSObject

typedef void (^CompletionHandler)(BOOL success);
typedef void (^ProcessHandler)(MFMessageComposeViewController* controller);

@property(nonatomic,retain) UIViewController *parentviewcontroller;

-(void)sendMessage:(UIViewController*)viewController
         ShareText:(NSString*)shareText
        ShareImage:(UIImage*)shareImage
 completionHandler:(CompletionHandler)handler
 completionHandler:(ProcessHandler)pHandler;

@end
