//
//  ViewController.m
//  20151005 HW - 2 randomNum
//
//  Created by 洪駿之 on 2015/10/6.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Generate two random numbers a & b by arc4random(), 0 < a < b < 1000
//Calculate the sum of all the odd numbers between a and b.
//e.g. Given a = 100, b = 106. The answer is 101 + 103 + 105 = 309


int lowerBound;
int upperBound;
int randomA;
int randomB;
int a;
int b;
int sum;


-(void) sumOfOddsBtw2Randoms {
    
    lowerBound = 0;
    upperBound = 1000;
    randomA = (lowerBound + (arc4random() % (upperBound - lowerBound)));
    randomB = (lowerBound + (arc4random() % (upperBound - lowerBound)));
    sum = 0;
    
    if ((randomA < randomB)&&(randomA % 2 == 1)) {
        a = randomA;
        b = randomB;
        while (a <= b)
        {
            sum += a;
            a +=2;
        }
    }
    else if ((randomA < randomB)&&(randomA % 2 == 0)) {
            a = randomA + 1;
            b = randomB;
            while (a <= b)
            {
                sum += a;
                a +=2;
            }
    }
    else if ((randomA > randomB)&&(randomA % 2 == 1)) {
        b = randomA;
        a = randomB;
        while (a <= b)
        {
            sum += a;
            a +=2;
        }
    }
    else if ((randomA > randomB)&&(randomA % 2 == 0)) {
        b = randomA + 1;
        a = randomB;
        while (a <= b)
        {
            sum += a;
            a +=2;
        }
    }
    else {};
    
    NSLog (@"%d",sum);
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
