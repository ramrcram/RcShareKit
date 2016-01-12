//
//  RCFaceBook.h
//  RcShareKit
//
//  Created by Ramesh on 10/01/16.
//  Copyright © 2016 Ramesh R C. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface RCFaceBook : NSObject<FBSDKSharingDelegate>

typedef void (^CompletionHandler)(BOOL success);


-(void)sendFbMessanger:(UIViewController*)viewController
             ShareText:(NSString*)shareText
            ShareImage:(UIImage*)shareImage
     completionHandler:(CompletionHandler)handler;

-(void)shareFBImage:(UIViewController*)viewController
          ShareText:(NSString*)shareText
         ShareImage:(UIImage*)shareImage
           ShareUrl:(NSString*)shareUrl
  completionHandler:(CompletionHandler)handler;
@end
