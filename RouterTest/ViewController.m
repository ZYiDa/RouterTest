//
//  ViewController.m
//  RouterTest
//
//  Created by YYKit on 2017/12/22.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "ViewController.h"
#import "HHRouter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    HHRouterBlock block = [[HHRouter shared] matchBlock:@"testBlock"];
    block(@{@"key":@"valeu001"});
    NSLog(@"Style1: %@ ",block);

    [self presentViewController:[[HHRouter shared] matchController:@"first"]
                       animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
