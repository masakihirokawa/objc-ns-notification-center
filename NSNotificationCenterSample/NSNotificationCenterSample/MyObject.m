//
//  MyObject.m
//  NSNotificationCenterSample
//
//  Created by Dolice on 2013/04/21.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

- (void)post
{
  //通知センターの取得
  NSNotificationCenter *notificationCenter;
  notificationCenter = [NSNotificationCenter defaultCenter];
  
  //追加情報に文字列を代入
  NSDictionary *dictionary;
  dictionary = [NSDictionary dictionaryWithObject:@"Notification"
                                           forKey:@"String"];
  
  //通知する
  [notificationCenter postNotificationName:@"MyNotification"
                                    object:self
                                  userInfo:dictionary];
}

@end
