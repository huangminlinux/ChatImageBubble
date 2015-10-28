//
//  ChatImageTableViewCell.h
//  ChatImageBubbleDemo
//
//  Created by HuminiOS on 15/10/28.
//  Copyright © 2015年 HuminiOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatImageBubble.h"
#import "ImageModel.h"

@interface ChatImageTableViewCell : UITableViewCell
@property(strong, nonatomic)ChatImageBubble *imageBubble;

- (void)setDataWithModel:(ImageModel *)imageModel withSide:(BOOL)isReci;
@end
