//
//  ViewController.m
//  CustomVCTransition
//
//  Created by qinyihui on 12/11/14.
//  Copyright (c) 2014 qinyihui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selector:(id)sender{
    UIViewController *vc=[[UIViewController alloc]init];
    vc.view.frame=self.view.frame;
    vc.view.backgroundColor=[UIColor blueColor];
    vc.navigationItem.title=@"vc2";
    [self.navigationController pushViewController:vc animated:YES];
}
@end
