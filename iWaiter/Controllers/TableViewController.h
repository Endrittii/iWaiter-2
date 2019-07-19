//
//  TableViewController.h
//  iWaiter
//
//  Created by IMac on 7/17/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface TableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    AppDelegate *mainDelegate;
}
@property(nonatomic, strong) AppDelegate *mainDelegate;

@end
