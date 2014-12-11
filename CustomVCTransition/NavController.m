//
//  NavController.m
//  CustomVCTransition
//
//  Created by qinyihui on 12/11/14.
//  Copyright (c) 2014 qinyihui. All rights reserved.
//

#import "NavController.h"
#import "NavDelegate.h"

@interface NavController ()
{
    id<UINavigationControllerDelegate>_navDelegate;
}
@end

@implementation NavController

-(id)initWithCoder:(NSCoder *)aDecoder{
    self=[super initWithCoder:aDecoder];
    if (self) {
        _navDelegate=[NavDelegate new];
        self.delegate=_navDelegate;//将导航控制器的委托设为我们自定义的委托
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
