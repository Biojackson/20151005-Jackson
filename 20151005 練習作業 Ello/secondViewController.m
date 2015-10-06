//
//  secondViewController.m
//  20151005 練習作業 Ello
//
//  Created by 洪駿之 on 2015/10/6.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import "secondViewController.h"




@implementation secondViewController

- (IBAction)butPressed:(UIButton *)sender {
    
    secondViewController* firstVC =[self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    
    [self presentViewController:firstVC animated:NO completion:nil];
    
}


@end
