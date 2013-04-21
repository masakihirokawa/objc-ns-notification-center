//
//  MyObserver.m
//  NSNotificationCenterSample
//
//  Created by Dolice on 2013/04/21.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "MyObserver.h"

@implementation MyObserver

- (id)init
{
  self = [super init];
  if (self) {
    //通知を受け取ったら「myNotification」メソッドを呼び出すようにする
    NSNotificationCenter *notificationCenter;
    notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self
                           selector:@selector(myNotification:)
                               name:@"MyNotification"
                             object:nil];
  }
  return self;
}

- (void)dialloc
{
  //インスタンスが破棄される前に通知センターの登録を解除
  NSNotificationCenter *notificationCenter;
  notificationCenter = [NSNotificationCenter defaultCenter];
  [notificationCenter removeObserver:self];
}

- (void)myNotification:(NSNotification *)aNotification
{
  //追加情報を取得する
  NSDictionary *userInfo = [aNotification userInfo];
  NSString *str = [userInfo objectForKey:@"String"];
  
  NSLog(@"%@", str);
}

@end
