//
//  ViewController.m
//  GHimagePicker
//
//  Created by 郭杭 on 2017/7/21.
//  Copyright © 2017年 郭杭. All rights reserved.
//

#import "ViewController.h"
#import "GHimagePicker.h"

@interface ViewController ()

@end

@implementation ViewController {
    UIImageView *ghImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ghImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    ghImageView.contentMode = UIViewContentModeScaleAspectFill;
    ghImageView.layer.masksToBounds = YES;
    ghImageView.layer.cornerRadius = 0;
    [self.view addSubview:ghImageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    GHimagePicker *ghImagePicker = [[GHimagePicker alloc] init];
    [ghImagePicker showImagePickerFromViewController:self allowsEditing:NO finishAction:^(UIImage *image) {
        
        UIImage *watermarkImage = [UIImage imageNamed:@"Slice"];
        
        ghImageView.image = [ghImagePicker addImage:image withImage:watermarkImage];
    }];
}


@end
