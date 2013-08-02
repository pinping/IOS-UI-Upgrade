//
//  PPTextView.h
//  定制
//
//  Created by pinping on 13-7-15.
//  Copyright (c) 2013年 maclove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPTextView : UITextView
@property (nonatomic, retain) NSString *placeholder;
@property (nonatomic, retain) UIColor *placeholderColor;

-(void)textChanged:(NSNotification*)notification;
@end
