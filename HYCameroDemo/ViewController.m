//
//  ViewController.m
//  HYCameroDemo
//
//  Created by chy on 16/12/19.
//  Copyright © 2016年 Chy. All rights reserved.
//

#import "ViewController.h"
#import "FastttCamera.h"

@interface ViewController () <FastttCameraDelegate>

@property (nonatomic, strong) FastttCamera * camera;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initialize
{
    _camera = [[FastttCamera alloc] init];
    self.camera.delegate = self;
    
    [self fastttAddChildViewController:self.camera];
    self.camera.view.frame = self.view.frame;
}

@end
