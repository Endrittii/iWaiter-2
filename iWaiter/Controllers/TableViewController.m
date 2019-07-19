//
//  TableViewController.m
//  iWaiter
//
//  Created by IMac on 7/17/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import "TableViewController.h"
#import "SiteCell.h"
#import "Data.h"
@interface TableViewController ()

@end

@implementation TableViewController
@synthesize mainDelegate;

#pragma mark Table Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mainDelegate.people count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    
    SiteCell *cell=(SiteCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell ==nil)
    {    cell=[[SiteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

NSInteger row = indexPath.row;
Data *d = [mainDelegate.people objectAtIndex:row];
cell.primaryLabel.text=d.name;
cell.secondaryLabel.text=d.email;

cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
return cell;



}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    
    Data *person = [mainDelegate.people objectAtIndex:row];
    
    NSString *title=person.name;
    NSString *msg=person.food;
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style: UIAlertActionStyleDefault handler:nil];
    
    
    [alert addAction:ok];
    
    [self presentViewController:alert animated:YES completion:nil];
}
#pragma mark View Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mainDelegate=(AppDelegate *)[[UIApplication sharedApplication] delegate];
    [mainDelegate readDataFromDatabase];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
