//
//  Food.h
//  GoEat
//
//  Created by Rendong Chen on 15/2/23.
//  Copyright (c) 2015年 Apapa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) NSUInteger review;

- (instancetype)initWithName:(NSString *)name
                       image:(UIImage *)image;

@end
