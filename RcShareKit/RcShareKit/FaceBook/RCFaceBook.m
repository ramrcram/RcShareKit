//
//  RCFaceBook.m
//  RcShareKit
//
//  Created by Ramesh on 10/01/16.
//  Copyright © 2016 Ramesh R C. All rights reserved.
//

#import "RCFaceBook.h"

@implementation RCFaceBook
{
    CompletionHandler _completionHandler;
}

-(void)sendFbMessanger:(UIViewController*)viewController
         ShareText:(NSString*)shareText
        ShareImage:(UIImage*)shareImage
 completionHandler:(CompletionHandler)handler{
    
    _completionHandler = [handler copy];
    
    [FBSDKMessengerSharer shareImage:shareImage withOptions:nil];
    
}

-(void)shareFBImage:(UIViewController*)viewController
          ShareText:(NSString*)shareText
         ShareImage:(UIImage*)shareImage
          ShareUrl:(NSString*)shareUrl
  completionHandler:(CompletionHandler)handler{
    
    FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc] init];
    photo.image = shareImage;
    photo.userGenerated = NO;
    photo.caption = shareText;
    
    FBSDKSharePhotoContent *content = [[FBSDKSharePhotoContent alloc] init];
    content.photos = @[photo];
    content.contentURL = [NSURL URLWithString: shareUrl];
    content.ref = shareText;
    
    FBSDKShareDialog* dialog = [[FBSDKShareDialog alloc] init];
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fbauth2://"]]){
        dialog.mode = FBSDKShareDialogModeNative;
        dialog.shareContent = content;
        dialog.delegate = self;
        dialog.fromViewController = self;
        [dialog show];
    }
}


#pragma mark  FB Delegate

-(void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary *)results{
    if (_completionHandler) {
        _completionHandler(NO);
    }
}
-(void)sharerDidCancel:(id<FBSDKSharing>)sharer{
    if (_completionHandler) {
        _completionHandler(YES);
    }
}
-(void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{
    if (_completionHandler) {
        _completionHandler(NO);
    }
}

@end
