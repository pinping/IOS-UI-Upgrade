//
//  PPSuperScrollView.m
//  定制
//
//  Created by pinping on 13-5-20.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import "PPSuperScrollView.h"

@implementation PPSuperScrollView

- (id)initWithFrame:(CGRect)frame scrollStr:(NSString *)dataName
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
				
				
				scrollArray = [NSArray arrayWithArray:[PPOperateFile PPloadFromFile:TabBarData FileName:dataName FileType:PPplistType]];
				
				NSLog(@"scrollArray%@",scrollArray);
				
				kNumberOfPages = [scrollArray count];
				imgScrollView = [[UIScrollView alloc] initWithFrame:frame];
				imgScrollView.contentSize = CGSizeMake(imgScrollView.frame.size.width * kNumberOfPages, imgScrollView.frame.size.height);
				NSMutableArray *controllers = [[NSMutableArray alloc] init];
				for (unsigned i = 0; i < kNumberOfPages; i++)
						{
						[controllers addObject:[NSNull null]];
						}
				viewControllers = controllers;
				[controllers release];
				
				[self loadScrollViewWithPage:0];
				[self loadScrollViewWithPage:1];
    }
    return self;
}

- (void)loadScrollViewWithPage:(int)page
{
		if (page < 0)
        return;
    if (page >= kNumberOfPages)
        return;
		// replace the placeholder if necessary
    PPSuperImageView *controller = [viewControllers objectAtIndex:page];
    if ((NSNull *)controller == [NSNull null])
				{
				CGRect temp = CGRectMake(0, 0, 320, 100);
				NSString *tempStr = [viewControllers objectAtIndex:page];
				controller = [[PPSuperImageView alloc] initWithFrame:temp imgName:tempStr];//自定义的viewController初始方法
				[viewControllers replaceObjectAtIndex:page withObject:controller];//替换之前内容置为空的相应页面
				[controller release];
				}
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
		if (pageControlUsed){
				return;
		}
		
		CGFloat pageWidth = imgScrollView.frame.size.width;
		int page = floor((imgScrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
		
		[self loadScrollViewWithPage:page - 1];
		[self loadScrollViewWithPage:page];
		[self loadScrollViewWithPage:page + 1];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    pageControlUsed = NO;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    pageControlUsed = NO;
}

@end
