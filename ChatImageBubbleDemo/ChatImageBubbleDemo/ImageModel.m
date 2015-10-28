//
//  imageModel.m
//  ChatImageBubbleDemo
//
//  Created by HuminiOS on 15/10/28.
//  Copyright © 2015年 HuminiOS. All rights reserved.
//

#import "ImageModel.h"

@implementation ImageModel
- (void)setupImageSize {
  UIImage *img = [UIImage imageNamed:_imageName];
  
  float imgHeight;
  float imgWidth;
  
  if (img.size.height >= img.size.width) {
    imgHeight = 135;
    imgWidth = (img.size.width/img.size.height) *imgHeight;
  }else {
    imgWidth = 135;
    imgHeight = (img.size.height/img.size.width) *imgWidth;
  }
  if ((imgWidth > imgHeight?imgHeight/imgWidth:imgWidth/imgHeight)<0.47) {
    self.imageSize = imgWidth > imgHeight?CGSizeMake(135, 55):CGSizeMake(55, 135);//CGSizeMake(55, 135);
    return;
  }
  self.imageSize = CGSizeMake(imgWidth, imgHeight);
  self.imageSize = self.imageSize;
}
@end
