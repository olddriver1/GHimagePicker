//
//  ViewController.m
//  GHimagePicker
//
//  Created by 郭杭 on 17/4/27.
//  Copyright © 2017年 郭杭. All rights reserved.
//

#import "ViewController.h"
#import "GHimagePicker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - 响应事件
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [GHimagePicker showImagePickerFromViewController:self allowsEditing:YES finishAction:^(UIImage *image) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        imageView.image = image;
        [self.view addSubview:imageView];
        
    }];
}

@end
