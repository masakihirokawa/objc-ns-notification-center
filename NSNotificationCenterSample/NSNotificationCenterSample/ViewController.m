//
//  ViewController.m
//  NSNotificationCenterSample
//
//  Created by Dolice on 2013/04/21.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //インスタンスを生成する
  MyObject *obj = [[MyObject alloc] init];
  MyObserver *observer = [[MyObserver alloc] init];
  
  [obj post];
}

@end
