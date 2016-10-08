//
//  WKJSalesViewController.m
//  沃克家
//
//  Created by jundanuantong on 16/10/7.
//  Copyright © 2016年 jundanuantong. All rights reserved.
//

#import "WKJSalesViewController.h"

@interface WKJSalesViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, copy) NSArray *basicArray;

@end

@implementation WKJSalesViewController

- (NSArray *)basicArray
{
    return @[@[@"function_statistics",@"客户登入"],
             @[@"function_statistics",@"信息报备"],
             @[@"function_marketing",@"我的客户"],
             @[@"function_marketing1",@"合同管理"],
             @[@"crm_search_icon",@"增加人脉"],
             @[@"function_colleagues",@"人脉资源管理"]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    tableView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0f];

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.basicArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SalesCell"];
    cell.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0f];
    cell.textLabel.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0f];
    
    NSArray *temp = self.basicArray[indexPath.row];
    
    cell.textLabel.text = temp[1];
    
    cell.imageView.image = [UIImage imageNamed:temp[0]];
    
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
