//
//  ViewController.m
//  UtilsCode
//
//  Created by alaiye on 2017/10/29.
//  Copyright © 2017年 alaiye. All rights reserved.
//

#import "ViewController.h"
#import "Helper.h"
#import "Micro.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Log("hello");
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [Helper showAlertWithOneAction:self title:@"Title" message:@"some thing" actionTitle:@"OK" handler:nil];
}

@end
