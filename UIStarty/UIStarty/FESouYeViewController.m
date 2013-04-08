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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (NSInteger) numberOfSectionsInTableView:(UITableView*) tables
{
    return 2;
}


- (NSInteger)tableView:(UITableView*)tableview numberOfRowsInSection:(NSInteger)section
{
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
