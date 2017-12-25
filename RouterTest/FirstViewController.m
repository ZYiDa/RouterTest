//
//  FirstViewController.m
//  RouterTest
//
//  Created by YYKit on 2017/12/22.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "FirstViewController.h"
#import "HHRouter.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"Style2: %@ ",[[HHRouter shared] callBlock:@"testBlock"]);
}
- (IBAction)click:(id)sender {
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *vc = [[HHRouter shared] matchController:@"urls://second/testttttt/"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
