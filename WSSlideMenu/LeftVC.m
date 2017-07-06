//
//  LeftVC.m
//  WSSlideMenu
//
//  Created by WebsoftProfession on 6/26/17.
//  WebsoftProfession
//

#import "LeftVC.h"

@interface LeftVC ()
{
    NSMutableArray *dataArray;
}
@end

@implementation LeftVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dataArray = [[NSMutableArray alloc] initWithObjects:@"Home",@"Category",@"Faq",@"Help", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellid = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    }
    
    UIImageView *img = [cell viewWithTag:100];
    UILabel *lblTitle = [cell viewWithTag:101];
    
    lblTitle.text = [dataArray objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UINavigationController *navController = (UINavigationController *)self.wsSlideMenu.homeViewController;
    if (indexPath.row==0) {
        UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
        [navController setViewControllers:@[controller]];
    }
    else{
        UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"ListVC"];
        [navController setViewControllers:@[controller]];
    }
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
