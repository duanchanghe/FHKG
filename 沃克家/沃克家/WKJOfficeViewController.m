//
//  WKJOfficeViewController.m
//  沃克家
//
//  Created by jundanuantong on 16/10/7.
//  Copyright © 2016年 jundanuantong. All rights reserved.
//

#import "WKJOfficeViewController.h"
#import "WKJOfficeCollectionViewCell.h"

@interface WKJOfficeViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>




@end

@implementation WKJOfficeViewController

- (NSArray *)basicArray
{
    
    return  @[@[@"xiegongzuorizhi",@"写日志"],
              @[@"chakanrizhi",@"查看日志"],
              @[@"waichukaoqing",@"外出考勤"],
              @[@"chakankaoqing",@"查看考勤"],
              @[@"tianjiashour",@"添加收入"],
              @[@"tianjiazhichu",@"添加支出"],
              @[@"shouzhishenpi",@"收支审批"],
              @[@"mingxiliushuizhang",@"明细流水"],
              @[@"shouzhimingxi",@"收支总览"]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];

    // Do any additional setup after loading the view.
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    collectionView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0f];

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.basicArray.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    WKJOfficeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"OfficeCell" forIndexPath:indexPath];
    
    NSArray *temp = self.basicArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:temp[0]];
    cell.textLabel.text = temp[1];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
