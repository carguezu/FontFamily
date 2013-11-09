//
//  CGZFontViewController.m
//  FontFamily
//
//  Created by Carlos Gz on 03/11/13.
//  Copyright (c) 2013 Carlos Gz. All rights reserved.
//

#import "CGZFontViewController.h"

@interface CGZFontViewController ()

@end

@implementation CGZFontViewController


-(id) initWithFont:(UIFont *)aFont{
    
    self = [super initWithNibName:nil bundle:nil];
    
    if (self){
        _font = aFont;
    }
    
    return self;
}


-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.fontView.font = self.font;
    self.fontName.text = self.font.fontName;
    self.fontName.font = [self.font fontWithSize:25.0];
    self.fontName.adjustsFontSizeToFitWidth = YES;
    self.title = @"Font preview";
}


/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Log all the fonts available. Used to locate our custom font true name
    for (NSString* familyName in [UIFont familyNames]){
        NSLog(@"%@", familyName);
        
        NSArray *fonts = [UIFont fontNamesForFamilyName:familyName];
        for (NSString* FontName in fonts){
            NSLog(@"  %@", FontName);
        }
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
