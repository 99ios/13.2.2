//
//  ViewController.m
//  13.2.2 Plist文件的读取
//
//  Created by 李维佳 on 2017/4/4.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *arrayPistPath = [[NSBundle mainBundle] pathForResource:@"websites" ofType:@"plist"];
    NSMutableArray *arrayM = [NSMutableArray arrayWithContentsOfFile:arrayPistPath];
    NSLog(@"%@",arrayM);
    
    NSString *dicPistPath = [[NSBundle mainBundle] pathForResource:@"website" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:dicPistPath];
    NSLog(@"%@",dict);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
