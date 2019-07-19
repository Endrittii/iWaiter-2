//
//  PickerViewController.m
//  iWaiter
//
//  Created by IMac on 7/17/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import "PickerViewController.h"
#import "Data.h"
@interface PickerViewController ()

@end

@implementation PickerViewController
@synthesize picker, mainDelegate;
#pragma mark Picker Methods

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [mainDelegate.people count];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    Data *person = [mainDelegate.people objectAtIndex:row];
    return [person name];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    Data *person = [mainDelegate.people objectAtIndex:row];
    NSString *title=[person name];
    NSString *msg=[person food];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok =[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}


#pragma mark View Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
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
