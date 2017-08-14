//
//  ViewController.m
//  TESImage
//
//  Created by sycf_ios on 2017/8/11.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ViewController
- (IBAction)show:(id)sender {
    
//    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionTransitionCurlDown animations:^{
//        self.containerView.hidden = self.containerView.hidden ? NO: YES;
//    } completion:nil];
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
        self.containerView.hidden = self.containerView.hidden ? NO: YES;
    } completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.containerView.layer.borderColor = [UIColor redColor].CGColor;
    self.containerView.layer.borderWidth = 1.f;
    [self registerForPreviewingWithDelegate:self sourceView:self.view];
}
-(IBAction)unwindSegue:(UIStoryboardSegue *)segue{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
