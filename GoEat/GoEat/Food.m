//
//  Food.m
//  GoEat
//
//  Created by Rendong Chen on 15/2/23.
//  Copyright (c) 2015年 Apapa. All rights reserved.
//

#import "Food.h"

@implementation Food

- (instancetype)initWithName:(NSString *)name
                       image:(UIImage *)image{
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
        _review = 0;
    }
    return self;
}

@end
