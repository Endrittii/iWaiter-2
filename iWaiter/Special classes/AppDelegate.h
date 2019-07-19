//
//  AppDelegate.h
//  iWaiter
//
//  Created by IMac on 7/16/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "Data.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSString *databaseName;
    //vendi ku ruhen te dhenat
    NSString *databasePath;
    
    NSMutableArray *people;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *databaseName;
@property (strong, nonatomic) NSString *databasePath;
@property (strong, nonatomic) NSMutableArray *people;
-(void)checkAndCreateDatabase;
-(void)readDataFromDatabase;
-(BOOL)insertIntoDatabase:(Data *)person;




@end
