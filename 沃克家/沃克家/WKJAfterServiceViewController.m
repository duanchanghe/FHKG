//
//  WKJAfterServiceViewController.m
//  沃克家
//
//  Created by jundanuantong on 16/10/7.
//  Copyright © 2016年 jundanuantong. All rights reserved.
//

#import "WKJAfterServiceViewController.h"
#import "WKJAfterServiceCollectionViewCell.h"


@interface WKJAfterServiceViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation WKJAfterServiceViewController

- (NSArray *)basicArray
{
    return  @[@[@"woyaopaigong",@"我要派工"],
              @[@"paigongmingxi",@"派工明细"],
              @[@"    ",@"    "],
              @[@"weishigong",@"尚未施工"],
              @[@"yiqishigongwan",@"施工进行中"],
              @[@"quanbushigongwan",@"项目完成"],
              @[@"shouhouguanli",@"售后管家"],
              @[@"baoyangguanli",@"保养管理"],
              @[@"  ",@"  "]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];

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
    
    WKJAfterServiceCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AfterServiceCell" forIndexPath:indexPath];
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
