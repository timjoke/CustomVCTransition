//
//  FadeTransition.m
//  CustomVCTransition
//
//  Created by qinyihui on 12/11/14.
//  Copyright (c) 2014 qinyihui. All rights reserved.
//

#import "FadeTransition.h"


@implementation FadeTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 1.25f;//系统默认是0.25
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *fromVC=[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC=[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    //把新旧视图分别加到动画容器中
    UIView *containerView=[transitionContext containerView];
    [containerView addSubview:fromVC.view];
    [containerView addSubview:toVC.view];
    //实现新视图的淡入效果
    toVC.view.alpha=0.0f;
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toVC.view.alpha=1.0f;
    } completion:^(BOOL finished) {
        //移除旧视图并通知系统完成过渡
        [fromVC.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}
@end
