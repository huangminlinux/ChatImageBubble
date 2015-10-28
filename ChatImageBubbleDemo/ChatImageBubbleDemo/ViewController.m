//
//  ViewController.m
//  ChatImageBubbleDemo
//
//  Created by HuminiOS on 15/10/28.
//  Copyright © 2015年 HuminiOS. All rights reserved.
//

#import "ViewController.h"
#import "ImageModel.h"
#import "ChatImageTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *messageTableview;
@property (strong, nonatomic)NSMutableArray *imgArr;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  _imgArr = @[].mutableCopy;
  for (int i=0; i < 100 ; i++) {
    ImageModel *model = [[ImageModel alloc] init];
    model.imageName = [NSString stringWithFormat:@"%d.jpg",i%9 + 1];
    [model setupImageSize];
    [_imgArr addObject:model];
  }
  _messageTableview.delegate = self;
  _messageTableview.dataSource =self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  ImageModel *model = _imgArr[indexPath.row];
  return model.imageSize.height + 40;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [_imgArr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *imagecellIdentifier = @"imagecellIdentifier"; //name
  ChatImageTableViewCell *imagecell = (ChatImageTableViewCell *)[tableView dequeueReusableCellWithIdentifier:imagecellIdentifier];
  
  if (imagecell == nil) {
    imagecell = [[ChatImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:imagecellIdentifier];
  }
  [imagecell setDataWithModel:_imgArr[indexPath.row]];
  
  return imagecell;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
