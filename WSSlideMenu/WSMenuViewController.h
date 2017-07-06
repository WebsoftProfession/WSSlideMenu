//
//  WSMenuViewController.h
//  WSSlideMenu
//
//  Created by WebsoftProfession on 6/26/17.
//  WebsoftProfession
//

#import <UIKit/UIKit.h>
#import "UIViewController+WSMenuViewControllerExtend.h"

@interface WSMenuViewController : UIViewController

+(instancetype)sharedInstance;
-(void)toggleWSMenuViewController:(WSMenuViewController *)controller;

@property (nonatomic,strong) UIViewController *leftViewController;
@property (nonatomic,strong) UIViewController *homeViewController;
@property (nonatomic,strong) UIViewController *rightViewController;
@property (assign) CGFloat drawerWidth;
@property (assign) BOOL isPanMode;

@end
