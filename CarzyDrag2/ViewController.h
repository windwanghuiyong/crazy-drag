//
//  ViewController.h
//  CarzyDrag2
//
//  Created by 王慧勇 on 15/8/22.
//  Copyright (c) 2015年 王慧勇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)sliderMoved:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *targetLabel;
@property (strong, nonatomic) IBOutlet UISlider *slider;


@end

