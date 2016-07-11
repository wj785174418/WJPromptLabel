//
//  PromptLab.m
//  HelloWorld
//
//  Created by HuayuNanyan on 16/5/31.
//
//

#import "WJPromptLabel.h"

static WJPromptLabel *sharedPrompt;

@implementation WJPromptLabel

+(instancetype)sharedPromptLabel{
    if (sharedPrompt != nil) {
        return sharedPrompt;
    }
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedPrompt = [[WJPromptLabel alloc]init];
        [sharedPrompt setAttributes];
    });
    return sharedPrompt;
}

-(void)setAttributes{
    
    self.font = [UIFont systemFontOfSize:FontSize];
    
    self.textAlignment = NSTextAlignmentCenter;
    
    self.textColor = [UIColor whiteColor];
    
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7];
    
    self.alpha = 0;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.layer.cornerRadius = 8;
    self.clipsToBounds = YES;
}

-(void)setText:(NSString *)text{
    if (self.text != text) {
        [super setText:text];
        [self layoutLabel];
    }
    [self addAnimation];
}

-(void)layoutLabel{
    [self sizeToFit];
    
    CGRect labelFrame = self.frame;
    labelFrame.size.height += 2*MarginInset;
    labelFrame.size.width += 2*MarginInset;
    
    self.frame = labelFrame;
    
    self.center = Center;
}

-(void)addAnimation{
    CAAnimation *anim = [self.layer animationForKey:@"prompt"];
    if (anim) {
        [self.layer removeAnimationForKey:@"prompt"];
    }
    
    //创建关键帧动画，并设置动画属性
    CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    
    //设置关键帧
    NSValue *key1 = @1.0;
    NSValue *key2 = @1.0;
    NSValue *key3 = @0.0;
    keyframeAnimation.values = @[key1,key2,key3];
    keyframeAnimation.duration = 2.0;
    keyframeAnimation.keyTimes = @[@0.0,@0.7,@1.0];
    
    [self.layer addAnimation:keyframeAnimation forKey:@"prompt"];
}

@end








