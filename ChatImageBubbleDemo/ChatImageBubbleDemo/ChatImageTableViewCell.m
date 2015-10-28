//
//  ChatImageTableViewCell.m
//  ChatImageBubbleDemo
//
//  Created by HuminiOS on 15/10/28.
//  Copyright © 2015年 HuminiOS. All rights reserved.
//

#import "ChatImageTableViewCell.h"

@implementation ChatImageTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    self.imageBubble = [ChatImageBubble new];
    [self addSubview:self.imageBubble];
  }
  return self;
}

- (void)setDataWithModel:(ImageModel *)imageModel withSide:(BOOL)isReci {
  [self.imageBubble setBubbleSide:isReci];
  self.imageBubble.image  = [UIImage imageNamed:imageModel.imageName];
  self.imageBubble.frame = CGRectMake(isReci?20:150, 20, imageModel.imageSize.width, imageModel.imageSize.height);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
