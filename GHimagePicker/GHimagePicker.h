//
//  GHimagePicker.h
//  GHimagePicker
//
//  Created by 郭杭 on 17/4/27.
//  Copyright © 2017年 郭杭. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^GHImagePickerFinishAction)(UIImage *image);

@interface GHimagePicker : NSObject
/**
 @param viewController  用于present UIImagePickerController对象
 @param allowsEditing   是否允许用户编辑图像
 */
- (void)showImagePickerFromViewController:(UIViewController *)viewController
                            allowsEditing:(BOOL)allowsEditing
                             finishAction:(GHImagePickerFinishAction)finishAction;


/**
 @param oncImageName 需要添加水印的图片
 @param watermarkImageName 水印图片
 @return 合并完成的图片
 */
- (UIImage *)addImage:(UIImage *)oncImageName withImage:(UIImage *)watermarkImageName;
@end
