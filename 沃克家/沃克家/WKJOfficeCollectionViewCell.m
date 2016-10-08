//
//  WKJOfficeCollectionViewCell.m
//  沃克家
//
//  Created by jundanuantong on 16/10/8.
//  Copyright © 2016年 jundanuantong. All rights reserved.
//

#import "WKJOfficeCollectionViewCell.h"

@implementation WKJOfficeCollectionViewCell

- (instancetype)init
{
    if (self = [super init]) {
        
        _imageView.layer.masksToBounds = YES;
        
        _imageView.layer.cornerRadius = 5;
        
    }
    
    return self;
}

@end
