//
//  SecondViewController.m
//  RouterTest
//
//  Created by YYKit on 2017/12/22.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "SecondViewController.h"
#import "HHRouter.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"--- %@ ---",self.params[@"secondId"]);
    NSLog(@"--- %@ ---",self.params[@"testURL"]);
}

- (IBAction)click:(id)sender {
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self presentViewController:[[HHRouter shared] matchController:@"zero"] animated:YES completion:nil];
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
