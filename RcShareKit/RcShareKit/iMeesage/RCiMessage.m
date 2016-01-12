//
//  RCiMessage.m
//  RcShareKit
//
//  Created by Ramesh on 10/01/16.
//  Copyright © 2016 Ramesh R C. All rights reserved.
//

#import "RCiMessage.h"

@implementation RCiMessage
{
    CompletionHandler _completionHandler;
}

-(void)sendMessage:(UIViewController*)viewController
                  ShareText:(NSString*)shareText
                 ShareImage:(UIImage*)shareImage
          completionHandler:(CompletionHandler)handler
 completionHandler:(ProcessHandler)pHandler{
    
    MFMessageComposeViewController* messageComposer = [MFMessageComposeViewController new];
    [messageComposer setBody:shareText];
    
//    CGDataProviderRef provider = CGImageGetDataProvider(shareImage.CGImage);
//    NSData* attachment = (id)CFBridgingRelease(CGDataProviderCopyData(provider));

    NSData *exportData = UIImageJPEGRepresentation(shareImage ,1.0);

    [messageComposer addAttachmentData:exportData typeIdentifier:@"image/png" filename:@"Check.png"];
//    [messageComposer addAttachmentData:attachment typeIdentifier:@"public.data" filename:@"Check.png"];
    
    pHandler(messageComposer);
}

@end
