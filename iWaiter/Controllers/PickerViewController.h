//
//  PickerViewController.h
//  iWaiter
//
//  Created by IMac on 7/17/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface PickerViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    IBOutlet UIPickerView *picker;
    AppDelegate *mainDelegate;
}
@property (nonatomic, strong)IBOutlet UIPickerView *picker;
@property (nonatomic, strong)AppDelegate *mainDelegate;

@end
