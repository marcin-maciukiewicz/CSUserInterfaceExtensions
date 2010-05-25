//
//  NSMutableArray+StackAdditions.m
//  CFAnimationOne
//
//  Created by Marcin Maciukiewicz on 10/01/2010.
//  Copyright 2010 BluePocket Limited (bluepocket.com). All rights reserved.
//

#import "NSMutableArray+StackAdditions.h"


@implementation NSMutableArray (StackAdditions)

- (void)push:(id)obj {
	[self addObject: obj];
}

-(id)pop {	
    id lastObject = [[[self lastObject] retain] autorelease];
    if (lastObject)
        [self removeLastObject];
    return lastObject;
}

-(id)peekTest {
	return [self lastObject];
}

@end
