//
//  ViewController.m
//  TableView2015520
//
//  Created by AmberWhiteSky on 15/5/20.
//  Copyright (c) 2015年 juchuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  32  argb
     *   24  rgb  设置tableview 线条的颜色
     **/
    self.tableView.separatorColor = [UIColor  colorWithRed:78/255.0 green:100/255.0 blue:255/255.0 alpha:255/255.0];
    self.tableView.separatorStyle =  UITableViewCellSeparatorStyleNone ;
    
    //头部布局
    self.tableView.tableHeaderView = [UIButton  buttonWithType:UIButtonTypeContactAdd];
    self.tableView.tableFooterView  =[[UISwitch  alloc] init];
    
}
//隐藏头部布局
-(BOOL) prefersStatusBarHidden {
    return  YES;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  30;
}
-(UITableViewCell *)  tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell  *cell = [[UITableViewCell  alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text =[NSString stringWithFormat:@"第%ld行数据",(long)indexPath.row];
    return  cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
