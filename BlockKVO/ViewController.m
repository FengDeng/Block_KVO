//
//  ViewController.m
//  BlockKVO
//
//  Created by 邓锋 on 15/8/10.
//  Copyright © 2015年 邓锋. All rights reserved.
//

#import "ViewController.h"
#import "Object+KVO.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    
    [self.view DF_addObserver:self forKeyPath:@"backgroundColor" withBlock:nil];
//    
//    [self.view addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionOld context:nil];
    
    self.view.backgroundColor = [UIColor redColor];
}

//-(void)observeValueForKeyPath:(nullable NSString *)keyPath ofObject:(nullable id)object change:(nullable NSDictionary *)change context:(nullable void *)context{
//
//    NSLog(@"daa");
//}

- (IBAction)changeColor:(id)sender {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
