//
//  WKJMoreViewController.m
//  沃克家
//
//  Created by jundanuantong on 16/10/7.
//  Copyright © 2016年 jundanuantong. All rights reserved.
//

#import "WKJMoreViewController.h"

@interface WKJMoreViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation WKJMoreViewController


- (NSArray *)basicArray
{
    return @[@[@"ic_home_website",@"官方网站:www.woke.com"],
             @[@"ic_home_tel",@"联系客服:"],
             @[@"ic_home_consult",@"问题解答"],
             @[@"ic_home_update",@"检查更新"],
             @[@"ic_home_about",@"关于沃克家"]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];

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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MoreCell"];
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
