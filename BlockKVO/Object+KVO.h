//
//  Object+KVO.h
//  BlockKVO
//
//  Created by 邓锋 on 15/8/10.
//  Copyright © 2015年 邓锋. All rights reserved.
//

#import <Foundation/Foundation.h>

//KVO回调Block
typedef void(^KVO_Block)(id observedObject,NSString * observedKey,id oldValue,id newValue);

@interface NSObject (KVO)

//添加观察者
- (void) DF_addObserver:(NSObject*)obj
             forKeyPath:(NSString*)key
              withBlock:(KVO_Block)block;

//移除观察者
- (void) DF_removeObserver:(NSObject*)obj forKeyPath:(NSString*)key;

@end


@interface DFObserverInfo : NSObject

@property (nonatomic, weak) NSObject *observer;
@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) KVO_Block block;

@end
