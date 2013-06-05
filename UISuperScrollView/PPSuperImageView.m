//
//  PPSuperImageView.m
//  定制
//
//  Created by pinping on 13-5-20.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import "PPSuperImageView.h"

@implementation PPSuperImageView

@synthesize supImg;
@synthesize supImgView;

- (id)initWithFrame:(CGRect)frame imgName:(NSString *)img
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
				NSString  *tempStr = [img stringByReplacingOccurrencesOfString:@".jpg" withString:@""];
				NSString	*tempStra = [tempStr stringByAppendingFormat:@"%@",PPSmallIcon];
				NSString  *tempStrb = [PPOperateFile PPdataFilePath:takePicture FileName:tempStra FileType:PPjpgType];
				supImg = [UIImage imageWithContentsOfFile:tempStrb];
				supImgView = [[UIImageView alloc] initWithImage:supImg];
    }
    return self;
}


@end
