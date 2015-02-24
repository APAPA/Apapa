//
//  ChooseFoodView.m
//  GoEat
//
//  Created by Rendong Chen on 15/2/23.
//  Copyright (c) 2015年 Apapa. All rights reserved.
//

#import "ChooseFoodView.h"
#import "ImageLabelView.h"
#import "Food.h"

static const CGFloat ChoosePersonViewImageLabelWidth = 42.f;

@interface ChooseFoodView ()
@property (nonatomic, strong) UIView *informationView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) ImageLabelView *reviewImageLabelView;
@end

@implementation ChooseFoodView

#pragma mark - Object Lifecycle

- (instancetype)initWithFrame:(CGRect)frame
                       food:(Food *)food
                      options:(MDCSwipeToChooseViewOptions *)options {
    self = [super initWithFrame:frame options:options];
    if (self) {
        _food = food;
        self.imageView.image = _food.image;
        
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight |
        UIViewAutoresizingFlexibleWidth |
        UIViewAutoresizingFlexibleBottomMargin;
        self.imageView.autoresizingMask = self.autoresizingMask;
        
        [self constructInformationView];
    }
    return self;
}

#pragma mark - Internal Methods

- (void)constructInformationView {
    CGFloat bottomHeight = 60.f;
    CGRect bottomFrame = CGRectMake(0,
                                    CGRectGetHeight(self.bounds) - bottomHeight,
                                    CGRectGetWidth(self.bounds),
                                    bottomHeight);
    _informationView = [[UIView alloc] initWithFrame:bottomFrame];
    _informationView.backgroundColor = [UIColor whiteColor];
    _informationView.clipsToBounds = YES;
    _informationView.autoresizingMask = UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleTopMargin;
    [self addSubview:_informationView];
    
    [self constructNameLabel];
    [self constructReviewImageLabelView];
}

- (void)constructNameLabel {
    CGFloat leftPadding = 12.f;
    CGFloat topPadding = 17.f;
    CGRect frame = CGRectMake(leftPadding,
                              topPadding,
                              floorf(CGRectGetWidth(_informationView.frame)/2),
                              CGRectGetHeight(_informationView.frame) - topPadding);
    _nameLabel = [[UILabel alloc] initWithFrame:frame];
    _nameLabel.text = [NSString stringWithFormat:@"%@", _food.name];
    [_informationView addSubview:_nameLabel];
}

- (void)constructReviewImageLabelView {
    CGFloat rightPadding = 10.f;
    UIImage *image = [UIImage imageNamed:@"camera"];
    _reviewImageLabelView = [self buildImageLabelViewLeftOf:CGRectGetWidth(_informationView.bounds) - rightPadding
                                                      image:image
                                                       text:[@(_food.review) stringValue]];
    [_informationView addSubview:_reviewImageLabelView];
}

- (ImageLabelView *)buildImageLabelViewLeftOf:(CGFloat)x image:(UIImage *)image text:(NSString *)text {
    CGRect frame = CGRectMake(x - ChoosePersonViewImageLabelWidth,
                              0,
                              ChoosePersonViewImageLabelWidth,
                              CGRectGetHeight(_informationView.bounds));
    ImageLabelView *view = [[ImageLabelView alloc] initWithFrame:frame
                                                           image:image
                                                            text:text];
    view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    return view;
}

@end
