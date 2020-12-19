//
//  MyTableViewController.m
//  Test-Runloop监控卡顿
//
//  Created by 王笑宇 on 2020/12/18.
//

#import "MyTableViewController.h"
#import "JYMonitorRunloop.h"

@interface MyTableViewController ()



@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];
    NSString *text = nil;
    if (indexPath.row % 10 == 0) {
        usleep(1000 * 1000); // 1 * 1000 * 1000 == 1秒 这里用来检测滑动时的卡顿
        text = @"~这是一个占用主线程的耗时操作~";
    } else {
        text = [NSString stringWithFormat:@"cell - %ld",indexPath.row];
    }
    cell.textLabel.text = text;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    int a = 0;
    NSLog(@"-->耗时操作begin");
    for (long i = 0; i < 1000000000; i++) {
        a = a + 1;
    }
    NSLog(@"耗时操作结束end<--");
}

@end
