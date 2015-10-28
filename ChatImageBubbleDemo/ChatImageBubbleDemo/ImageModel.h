//
//  imageModel.h
//  ChatImageBubbleDemo
//
//  Created by HuminiOS on 15/10/28.
//  Copyright © 2015年 HuminiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageModel : CALayer

@property(nonatomic, strong)NSString *imageName;
@property (nonatomic, assign) CGSize imageSize;

- (void)setupImageSize;

@end
