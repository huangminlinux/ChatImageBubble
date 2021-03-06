//
//  ChatImageBubble.h
//  ChatImageBubbleDemo
//
//  Created by HuminiOS on 15/10/28.
//  Copyright © 2015年 HuminiOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatBubbleLayer.h"

@interface ChatImageBubble : UIImageView
@property (strong, nonatomic)ChatBubbleLayer *maskBubbleLayer;

- (void)setBubbleSide:(BOOL)isReci;// 注意这个方法要在setframe 之前调用，应为setNeedDisplay 在setframe里面调用了
@end
