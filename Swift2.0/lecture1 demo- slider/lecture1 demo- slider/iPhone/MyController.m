//
//  MyController.m
//  
//
//  Created by FloatingPoint on 7/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"


@implementation MyController
@synthesize btn1LabelOutlet;
@synthesize editBox;
@synthesize editBoxLabel;
@synthesize editBoxLabelInstant;
@synthesize btn1Outlet;
@synthesize sliderOutlet;
@synthesize labelOutlet;

- (void)dealloc {
    [sliderOutlet release];
    [labelOutlet release];
    [btn1Outlet release];
    [btn1LabelOutlet release];
    [editBox release];
    [editBoxLabel release];
    [editBoxLabelInstant release];
    [super dealloc];
}
- (IBAction)SliderValueChanged:(id)sender {
    int sliderValue = sliderOutlet.value;
    labelOutlet.text = [NSString stringWithFormat:@"%d", sliderValue];
}
- (IBAction)btn1OnTouchUpInside:(id)sender {
    btn1LabelOutlet.text = @"TouchUpInside";
}

- (IBAction)btn1OnTouchDown:(id)sender {
    btn1LabelOutlet.text = @"TouchDown";
}


- (IBAction)EditBoxOnTextChanged:(id)sender {
    editBoxLabel.text = editBox.text;
}

- (IBAction)EditBoxOnEditingDidEnd:(id)sender {
    editBoxLabel.text = editBox.text;
}

@end
