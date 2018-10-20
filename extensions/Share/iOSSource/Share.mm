//
//  Share.m
//  CameraApp
//
//  Created by Kaguva Games on 8/5/17.
//  Copyright © 2017 Kaguva Games. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Share.h"

const int EVENT_OTHER_SOCIAL = 70;
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
	extern UIViewController *g_controller;
	extern UIView *g_glView;
	extern int g_DeviceWidth;
	extern int g_DeviceHeight;

@implementation Share
{
}

-(void)ShareIOS_Text:(NSString*)Message
{
   
    NSArray* sharedObjects=[NSArray arrayWithObjects:Message,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]                                                                initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = g_controller.view;
    [g_controller presentViewController:activityViewController animated:YES completion:nil];
}


-(void)ShareIOS_Image:(NSString*)Path;
{
      
    UIImage *image = [UIImage imageWithContentsOfFile:Path];
    NSArray *activityItems = @[image];
    UIActivityViewController *activityViewControntroller = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    activityViewControntroller.excludedActivityTypes = @[];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        activityViewControntroller.popoverPresentationController.sourceView = g_controller.view;
        activityViewControntroller.popoverPresentationController.sourceRect = CGRectMake(g_controller.view.bounds.size.width/2, g_controller.view.bounds.size.height/4, 0, 0);
    }
    [g_controller presentViewController:activityViewControntroller animated:true completion:nil];
    
    
}

-(NSString*)IOS_getPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return([paths objectAtIndex:0]);
}

-(double)Share_checkPermission
{return(1);}

-(void)Share_getPermission
{}


@end
