//
//  MyController.h
//  
//
//  Created by FloatingPoint on 7/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyController : NSObject {
    
    UISlider *sliderOutlet;
    UILabel *labelOutlet;
    UIButton *btn1Outlet;
    UILabel *btn1LabelOutlet;
    UITextField *editBox;
    UILabel *editBoxLabel;
    UILabel *editBoxLabelInstant;
}
@property (nonatomic, retain) IBOutlet UISlider *sliderOutlet;
@property (nonatomic, retain) IBOutlet UILabel *labelOutlet;
- (IBAction)SliderValueChanged:(id)sender;
@property (nonatomic, retain) IBOutlet UIButton *btn1Outlet;
- (IBAction)btn1OnTouchUpInside:(id)sender;
- (IBAction)btn1OnTouchDown:(id)sender;
@property (nonatomic, retain) IBOutlet UILabel *btn1LabelOutlet;
@property (nonatomic, retain) IBOutlet UITextField *editBox;
@property (nonatomic, retain) IBOutlet UILabel *editBoxLabel;
@property (nonatomic, retain) IBOutlet UILabel *editBoxLabelInstant;
- (IBAction)EditBoxOnTextChanged:(id)sender;
- (IBAction)EditBoxOnEditingDidEnd:(id)sender;

@end
