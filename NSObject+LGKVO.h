//
//  NSObject+LGKVO.h
//  KVO
//
//  Created by 田云龙 on 2022/1/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^LGKVOBlock)(id observer,NSString *keyPath,id oldValue,id newValue);

@interface NSObject (LGKVO)

- (void)lg_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath block:(LGKVOBlock)block;

- (void)lg_removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;

@end

NS_ASSUME_NONNULL_END
