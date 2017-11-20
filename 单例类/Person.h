//
//  Person.h
//  单例类
//
//  Created by 马洪亮 on 2017/11/20.
//  Copyright © 2017年 马洪亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong) NSString *name;

- (instancetype)sharedMessage;
@end
