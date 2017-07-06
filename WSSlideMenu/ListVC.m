//
//  ListVC.m
//  WSSlideMenu
//
//  Created by WebsoftProfession on 6/26/17.
//  WebsoftProfession
//

#import "ListVC.h"

@interface ListVC ()

@end

@implementation ListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupMenuButton];
    // Do any additional setup after loading the view.
}

-(void)setupMenuButton{
    //set slide menu button to navigation bar
    UIButton * menuButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [menuButton addTarget:self action:@selector(menuAction:) forControlEvents:UIControlEventTouchUpInside];
    [menuButton setFrame:CGRectMake(0, 0, 20, 20)];
    [menuButton setExclusiveTouch:YES];
    [menuButton setContentMode:UIViewContentModeScaleToFill];
    [menuButton setImage:[UIImage imageNamed:@"menu"] forState:UIControlStateNormal];
    UIBarButtonItem *backMenuBarButton = [[UIBarButtonItem alloc] initWithCustomView:menuButton];
    self.navigationItem.leftBarButtonItem = backMenuBarButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)menuAction:(id)sender {
    [self.wsSlideMenu toggleWSMenuViewController:self.wsSlideMenu];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
