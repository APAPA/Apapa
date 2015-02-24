//
//  MenuViewController.h
//  GoEat
//
//  Created by Rendong Chen on 15/2/23.
//  Copyright (c) 2015年 Apapa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChooseFoodView.h"
#import <MDCSwipeToChoose/MDCSwipeToChoose.h>

@interface MenuViewController : UIViewController <MDCSwipeToChooseDelegate>

@property (nonatomic, strong) Food *currentFood;
@property (nonatomic, strong) ChooseFoodView *frontCardView;
@property (nonatomic, strong) ChooseFoodView *backCardView;

@end
