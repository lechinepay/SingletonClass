//
//  Person.m
//  单例类
//
//  Created by 马洪亮 on 2017/11/20.
//  Copyright © 2017年 马洪亮. All rights reserved.
//

#import "Person.h"

static Person *person = nil;

@implementation Person

- (instancetype)sharedMessage {
    person = (Person *) @"Person";
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        person = [[Person alloc] init];
    });

    NSString *className = NSStringFromClass([self class]);
    //防止子类调用
    if ([className isEqualToString:@"Person"] == NO) {
        NSParameterAssert(nil);
    }
    return person;
}

- (instancetype)init {
    NSString *string = (NSString *) person;
    //创建唯一
    if ([string isEqualToString:@"Person"] == YES && [string isKindOfClass:[NSString class]] == YES) {
        self = [super init];
        if (self) {
        }
        return self;
    } else {
        return nil;
    }
}


@end
