//
//  ChooseFoodView.h
//  GoEat
//
//  Created by Rendong Chen on 15/2/23.
//  Copyright (c) 2015年 Apapa. All rights reserved.
//

#import "MDCSwipeToChooseView.h"

@class Food;

@interface ChooseFoodView : MDCSwipeToChooseView

@property (nonatomic, strong, readonly) Food *food;

- (instancetype)initWithFrame:(CGRect)frame
                       food:(Food *)food
                      options:(MDCSwipeToChooseViewOptions *)options;

@end
