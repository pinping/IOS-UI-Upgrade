//
//  PPSuperImageView.h
//  定制
//
//  Created by pinping on 13-5-20.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MacPublicImoprt.h"


@interface PPSuperImageView : UIView
{
		UIImage *supImg;
		UIImageView	*supImgView;
}
@property (nonatomic, retain) UIImage *supImg;
@property (nonatomic, assign) IBOutlet UIImageView *supImgView;

- (id)initWithFrame:(CGRect)frame imgName:(NSString *)img;
@end
