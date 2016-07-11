//
//  PromptLab.h
//  HelloWorld
//
//  Created by HuayuNanyan on 16/5/31.
//
//

#import <UIKit/UIKit.h>

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

#define FontSize 13
#define MarginInset 13
#define Center CGPointMake(ScreenWidth/2, ScreenHeight-3*(FontSize+2*MarginInset))

@interface WJPromptLabel : UILabel

+(instancetype)sharedPromptLabel;

@end
