//
//  ViewController.m
//  TestTopMostView
//
//  Created by tomfriwel on 30/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIWindow *alertWindow;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showAction:(id)sender {
    
    self.alertWindow = nil;
    id vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MyAlertViewController"];
//    [UIApplication sharedApplication].delegate.window.rootViewController = vc;

    UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    alertWindow.backgroundColor = [UIColor redColor];
    alertWindow.windowLevel = UIWindowLevelAlert;
    alertWindow.rootViewController = vc;
    self.alertWindow = alertWindow;
//    NSLog(@"%@", [[[UIApplication sharedApplication] windows] objectAtIndex:0]);
    [alertWindow makeKeyAndVisible];
//    NSLog(@"%@", [[[UIApplication sharedApplication] windows] objectAtIndex:0]);
    
    NSLog(@"%@", [UIApplication sharedApplication].windows);
}

- (IBAction)removeAction:(id)sender {
    self.alertWindow = nil;
    [[UIApplication sharedApplication].delegate.window makeKeyAndVisible];
}


@end
