//
//  ViewController.m
//  WJPromptLabel
//
//  Created by HuayuNanyan on 16/7/11.
//  Copyright © 2016年 HuayuNanyan. All rights reserved.
//

#import "ViewController.h"
#import "WJPromptLabel.h"
#import "AppDelegate.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)clickBtn:(id)sender {
    [WJPromptLabel promptText:self.textField.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
