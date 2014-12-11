//
//  NavDelegate.m
//  CustomVCTransition
//
//  Created by qinyihui on 12/11/14.
//  Copyright (c) 2014 qinyihui. All rights reserved.
//

#import "NavDelegate.h"
#import "FadeTransition.h"

@implementation NavDelegate
-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    return [FadeTransition new];
}
@end
