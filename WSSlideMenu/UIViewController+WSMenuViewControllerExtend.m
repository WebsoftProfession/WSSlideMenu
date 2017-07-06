//
//  UIViewController+WSMenuViewControllerExtend.m
//  WSSlideMenu
//
//  Created by WebsoftProfession on 6/26/17.
//  WebsoftProfession
//

#import "UIViewController+WSMenuViewControllerExtend.h"
#import "WSMenuViewController.h"

@implementation UIViewController (WSMenuViewControllerExtend)

- (WSMenuViewController *)wsSlideMenu {
    return [WSMenuViewController sharedInstance];
}

@end
