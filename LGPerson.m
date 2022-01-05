//
//  LGPerson.m
//  KVO
//
//  Created by 田云龙 on 2022/1/5.
//

#import "LGPerson.h"

@implementation LGPerson

- (void)setNickName:(NSString *)nickName{
    NSLog(@"来到 LGPerson 的setter方法 :%@",nickName);
    _nickName = nickName;
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end
