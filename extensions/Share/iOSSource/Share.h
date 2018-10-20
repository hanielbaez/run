//
//  Share.h
//  CameraApp
//
//  Created by Kaguva Games on 8/5/17.
//  Copyright © 2017 Kaguva Games. All rights reserved.
//

#ifndef Share_h
#define Share_h


#endif /* Share_h */

#import <UIKit/UIKit.h>


@interface Share : NSObject
{
    
    Boolean Path0_Galery1,PickGalery;
    NSString *ImagePath;
    
}

-(void)ShareIOS_Text:(NSString*)Message;
-(void)ShareIOS_Image:(NSString*)Path;
-(NSString*)IOS_getPath;
-(double)Share_checkPermission;
-(void)Share_getPermission;

@end
