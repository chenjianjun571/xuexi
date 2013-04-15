//
//  FESouYeViewController.m
//  UIStarty
//
//  Created by chenjianjun on 13-4-7.
//  Copyright (c) 2013年 free. All rights reserved.
//

#import "FESouYeViewController.h"

@interface FESouYeViewController ()

@end

@implementation FESouYeViewController

@synthesize tableTest = _tableTest;
@synthesize webview = _webview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //[self setExtraCellLineHidden:_tableTest];
    
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [_tableTest setTableFooterView:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)call:(id)sender {
//    NSString *phoneNum = @"10086";
//    
//    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",phoneNum]];
//    
//    [[UIApplication sharedApplication] openURL:url];
    
    
    NSURL *url = [NSURL URLWithString:@"tel:11111111"];
    
    [_webview loadRequest:[NSURLRequest requestWithURL:url]];
}

//- (IBAction)jump:(UIButton *)sender {
////    // 获取故事板
////    UIStoryboard *board = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:nil];
////
////    // 获取故事板中某个View
////    UIViewController *next = [board instantiateViewControllerWithIdentifier:@"SecondStoryboard"];
////
////    // 跳转
////    [self presentModalViewController:next animated:YES];
//}

- (void)setExtraCellLineHidden: (UITableView *)tableView

{
    
    UIView *view = [UIView new];
    
    view.backgroundColor = [UIColor clearColor];
    
    [tableView setTableFooterView:view];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView*) tables
{
    return 2;
}


- (NSInteger)tableView:(UITableView*)tableview numberOfRowsInSection:(NSInteger)section
{
    //_tableTest.separatorStyle=UITableViewCellSeparatorStyleNone;
    return 1;
}

- (UITableViewCell*) tableView:(UITableView*) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
    }

    cell.textLabel.text = @"123";
    
    return cell;
}

- (NSString*) tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"1";
    }
    else
    {
        return @"2";
    }
}

@end
