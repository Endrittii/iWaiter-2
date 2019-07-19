//
//  SiteCell.h
//  iWaiter
//
//  Created by IMac on 7/18/19.
//  Copyright © 2019 Endrit Hoti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SiteCell : UITableViewCell
{
    UILabel *primaryLabel;
    UILabel *secondaryLabel;
    UIImageView *myImageView;
}
@property (nonatomic, strong) UILabel *primaryLabel;
@property (nonatomic, strong) UILabel *secondaryLabel;
@property (nonatomic, strong) UIImageView *myImageView;

@end
