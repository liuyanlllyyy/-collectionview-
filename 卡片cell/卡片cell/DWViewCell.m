//
//  DWViewCell.m
//  卡片cell
//
//  Created by Wei Zhu on 16/2/22.
//  Copyright © 2016年 JM. All rights reserved.
//

#import "DWViewCell.h"
#import "Masonry.h"
#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@implementation DWViewCell

//- (instancetype)initWithFrame:(CGRect)frame{
//  self =  [super initWithFrame:frame];
//    if (self) {
//    
//    self.layer.cornerRadius = 5.0f;
//   self.imageView = [[UIImageView alloc] init];
//        [self.contentView addSubview:self.imageView];
//
//   [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
//       make.top.mas_equalTo(self.contentView.mas_top);
//       make.bottom.mas_equalTo(self.contentView.mas_bottom);
//       make.right.mas_equalTo(self.contentView.mas_right);
//       make.left.mas_equalTo(self.contentView.mas_left);
//       
//   }];
//             }
//    return self;
//    }
//    
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height)];
        self.label.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font = [UIFont boldSystemFontOfSize:50.0];
        self.label.backgroundColor = [UIColor underPageBackgroundColor];
        self.label.textColor = [UIColor blackColor];
        [self.contentView addSubview:self.label];;
        self.contentView.layer.borderWidth = 1.0f;
        self.contentView.layer.borderColor = [UIColor whiteColor].CGColor;
    }
    return self;
}
- (void)awakeFromNib {
    self.layer.cornerRadius = 5.0f;
    
    //    CALayer *layer = [self layer];
    //    layer.borderColor = [[UIColor lightGrayColor] CGColor];
    //    layer.borderWidth = 1.0f;
    //
    //    self.layer.shadowColor = [UIColor blackColor].CGColor;
    //    self.layer.shadowOffset = CGSizeMake(0, 0);
    //    self.layer.shadowOpacity = 0.5;
    //    self.layer.shadowRadius = 10.0;
}
@end
