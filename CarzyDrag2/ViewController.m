//
//  ViewController.m
//  CarzyDrag2
//
//  Created by 王慧勇 on 15/8/22.
//  Copyright (c) 2015年 王慧勇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int currentValue;
    int targetValue;
}
- (IBAction)showAlert:(id)sender;

@end

@implementation ViewController
@synthesize slider;
@synthesize targetLabel;

- (void)updateLabels{
    self.targetLabel.text = [NSString stringWithFormat:@"%d",targetValue];
}

- (void)startNewRound{
    targetValue = 1 + (arc4random() % 100);
    currentValue = 50;
    self.slider.value = currentValue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//  currentValue = 50;
//  currentValue = slider.value;
//  currentValue = self.slider.value;
//  targetValue = 1 + (arc4random() % 100);
    // Do any additional setup after loading the view, typically from a nib.
    
    [self startNewRound];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
//  [[[UIAlertView alloc]initWithTitle:@"hello" message:@"I miss you" delegate:nil cancelButtonTitle:@"I know" otherButtonTitles:nil, nil]show];
//  NSString *message = [NSString stringWithFormat:@"pressent value is %d", currentValue];
    NSString *message = [NSString stringWithFormat:@"pressent value is %d, expected value is %d", currentValue,targetValue];
    [[[UIAlertView alloc]initWithTitle:@"hello" message:message delegate:nil cancelButtonTitle:@"I know" otherButtonTitles:nil, nil]show];
    
    [self startNewRound];
}
//- (IBAction)sliderMoved:(id)sender {
- (IBAction)sliderMoved:(UISlider*)sender {
//  UISlider *slider = (UISlider*)sender;
    currentValue = (int)lroundf(sender.value);
//  currentValue = (int)lroundf(slider.value);
//  NSLog(@"present value: %f", slider.value);
//  NSLog(@"present value: %d", currentValue);
}
@end
