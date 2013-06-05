//
//  PPSuperScrollView.h
//  定制
//
//  Created by pinping on 13-5-20.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MacPublicImoprt.h"
#import "PPSuperImageView.h"


@interface PPSuperScrollView : UIView<UIScrollViewDelegate>
{
		UIScrollView *imgScrollView;
		NSMutableArray *viewControllers;
		NSArray	*scrollArray;
		int  kNumberOfPages;
		BOOL pageControlUsed;
}
- (id)initWithFrame:(CGRect)frame scrollStr:(NSString *)dataName;

@end
