//
//  Data.m
//  iWaiter
//
//  Created by IMac on 7/18/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import "Data.h"

@implementation Data
@synthesize name, email, food;

-(id)initWithData:(NSString *)n theEmail:(NSString *)e theFood:(NSString *)f;
{
    if(self= [super init])
    {
        [self setName:n];
        [self setEmail:e];
        [self setFood:f];
    }
    return self;
}


@end
