//
//  MyAlertViewController.m
//  TestTopMostView
//
//  Created by tomfriwel on 30/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import "MyAlertViewController.h"

@interface MyAlertViewController ()

@end

@implementation MyAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)presentAction:(id)sender {
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MyAlertViewController"];
    [self presentViewController:vc animated:YES completion:^{
        for (UIWindow *window in [UIApplication sharedApplication].windows) {
            if ([window.rootViewController isEqual:vc]) {
                NSLog(@"alert window second:%@", window);
                break;
            }
        }
    }];
}


- (IBAction)testAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
//    NSLog(@"%@, %@", self, self.parentViewController);
//    for (UIWindow *window in [UIApplication sharedApplication].windows) {
//        if ([window.rootViewController isEqual:self]) {
//            NSLog(@"alert window first:%@", window);
//            break;
//        }
//    }
}

@end
