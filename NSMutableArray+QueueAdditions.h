//
//  NSMutableArray+QueueAdditions.h
//  CFAnimationOne
//
//  Created by Marcin Maciukiewicz on 09/01/2010.
//  Copyright 2010 BluePocket Limited (bluepocket.com). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (QueueAdditions)

-(void)addTail:(id)obj;
-(id)removeHead;

@end
