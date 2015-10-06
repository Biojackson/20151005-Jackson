//
//  FirstViewController.m
//  20151005 練習作業 Ello
//
//  Created by 洪駿之 on 2015/10/6.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController



- (IBAction)butPressed:(UIButton *)sender {
    
    
    // 建立 MainViewController 的實體
    FirstViewController *secondVC =[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    
    // 切換畫面
    [self presentViewController:secondVC animated:NO completion:nil];
}




@end
