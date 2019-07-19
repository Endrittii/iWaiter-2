//
//  ViewController.h
//  iWaiter
//
//  Created by IMac on 7/18/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<
UITextFieldDelegate>
{
    IBOutlet UILabel *lblTable;
    IBOutlet UILabel *lblPicker;
    
    IBOutlet UITextField *tbName;
    IBOutlet UITextField *tbEmail;
    IBOutlet UITextField *tbFood;
    //    IBOutlet UIButton *registerBtn;
    //    IBOutlet UIButton *loginBtn;
    //    IBOutlet UITextField *usernamefield;
    //    IBOutlet UITextField *passwordfield;
    //    IBOutlet UITextField *reEnterPasswordField;
    
    
    
}
//- (IBAction)loginUser:(id)sender;
////- (IBAction)buttontapped:(id)sender;
//- (IBAction)registerUser:(id)sender;

@property (nonatomic, strong) IBOutlet UILabel *lblTable;
@property (nonatomic, strong) IBOutlet UILabel *lblPicker;

@property (nonatomic, strong) IBOutlet UITextField *tbName;
@property (nonatomic, strong) IBOutlet UITextField *tbEmail;
@property (nonatomic, strong) IBOutlet UITextField *tbFood;


@end

