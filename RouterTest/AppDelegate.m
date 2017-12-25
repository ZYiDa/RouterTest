//
//  AppDelegate.m
//  RouterTest
//
//  Created by YYKit on 2017/12/22.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "AppDelegate.h"
#import "HHRouter.h"
#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [ViewController new];
    [self.window makeKeyAndVisible];

    [[HHRouter shared] map:@"zero" toControllerClass:[ViewController class]];

    [[HHRouter shared] map:@"first" toControllerClass:[FirstViewController class]];


    [[HHRouter shared] map:@"/second/:secondId/" toControllerClass:[SecondViewController class]];
    [[HHRouter shared] map:@"testBlock" toBlock:^id(NSDictionary *params) {
        NSLog(@"paramas:%@",params);
        id data;
        return data;
    }];

    return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
