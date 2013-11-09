//
//  CGZFontViewController.h
//  FontFamily
//
//  Created by Carlos Gz on 03/11/13.
//  Copyright (c) 2013 Carlos Gz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGZFontViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *fontName;
@property (weak, nonatomic) IBOutlet UITextView *fontView;
@property (strong, nonatomic) UIFont *font;

-(id) initWithFont: (UIFont *)aFont;

@end
