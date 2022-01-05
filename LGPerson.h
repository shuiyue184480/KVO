//
//  LGPerson.h
//  KVO
//
//  Created by 田云龙 on 2022/1/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGPerson : NSObject{
@public
    NSString *name;
}
@property (nonatomic, copy) NSString *nickName;

@end

NS_ASSUME_NONNULL_END
