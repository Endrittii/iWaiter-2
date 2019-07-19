//
//  ViewController.m
//  iWaiter
//
//  Created by IMac on 7/18/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import "ViewController.h"
//#import <Parse/Parse.h>
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize lblPicker, lblTable, tbName, tbFood, tbEmail;

-(IBAction)addPerson:(id)sender
{
    AppDelegate *mainDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    Data *person =[[Data alloc] initWithData:tbName.text theEmail:tbEmail.text theFood:tbFood.text];
    BOOL returncode = [mainDelegate insertIntoDatabase:person];
    
    NSString *returnMsg = @"Food has been added";
    
    if(returncode==NO)
        returnMsg=@"Food Add Failed";
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Attention!" message:returnMsg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

-(IBAction)unwindToThisViewController:(UIStoryboardSegue *)sender
{
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    
    CGRect tableFrame = lblTable.frame;
    CGRect pickerFrame = lblPicker.frame;
    
    if(CGRectContainsPoint(tableFrame, touchPoint))
    {
        [self performSegueWithIdentifier:@"HomeSegueToTable" sender:self];
    }
    if (CGRectContainsPoint(pickerFrame, touchPoint)) {
        [self performSegueWithIdentifier:@"HomeSegueToPicker" sender:self];
    }
}
//- (void) checkPasswordsMatch {
//    if([passwordfield.text isEqualToString:reEnterPasswordField.text]){
//        NSLog(@"passwords match!");
//    }
//    else {
//        NSLog(@"passwords dont match");
//        UIAlertView *error=[[UIAlertView alloc] initWithTitle:@"Oooops" message:@"You entered passwords do not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
//
//        [error show];
//    }
//
//}


//- (IBAction)loginUser:(id)sender {
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    if([usernamefield.text isEqualToString:[defaults objectForKey:@"username"]] && [passwordfield.text isEqualToString:[defaults objectForKey:@"password"]]) {
//        [self performSegueWithIdentifier:@"login" sender:self];
//    }
//    else{
//        //NSLog(@"Login credentials incorrect");
//        UIAlertView *error=[[UIAlertView alloc] initWithTitle:@"Ooooops" message:@"Your username or password does not match!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
//        [error show];
//    }
//}



//- (void) registerNewUser{
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//
//    [defaults setObject:usernamefield.text forKey:@"username"];
//    [defaults setObject:passwordfield.text forKey:@"password"];
//    [defaults setBool:YES forKey:@"registered"];
//
//    [defaults synchronize];
//
//
//    UIAlertView *success=[[UIAlertView alloc] initWithTitle:@"Success" message:@"You have registered a new user!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
//    [success show];
//    [self performSegueWithIdentifier:@"login" sender:self];
//
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    //    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //    if(![defaults boolForKey:@"registered"]){
    //        NSLog(@"No user registered");
    //        loginBtn.hidden = YES;
    //    }
    //    else {
    //        NSLog(@"user is registered");
    //        reEnterPasswordField.hidden = YES;
    //        registerBtn.hidden = YES;
    //
    //
    //    }
    //}
    //- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)registerUser:(id)sender {
//    if([usernamefield.text isEqualToString:@""] || [passwordfield.text isEqualToString:@""] || [reEnterPasswordField.text isEqualToString:@""]){
//        //NSLog[@"Error, all fields must be filled in"];
//
//
//        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Ooooops" message:@"You must complete all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
//        [error show];
//
//    }
//    else {
//       [self checkPasswordsMatch];
//    }

@end







