//
//  Data.h
//  iWaiter
//
//  Created by IMac on 7/18/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
{
    NSString *name;
    NSString *email;
    NSString *food;
}
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *food;
-(id)initWithData:(NSString *)n theEmail:(NSString *)e theFood:(NSString *)f;
@end
