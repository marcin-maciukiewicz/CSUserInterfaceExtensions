//
//  NSMutableArray+QueueAdditions.m
//  CFAnimationOne
//
//  Created by Marcin Maciukiewicz on 09/01/2010.
//  Copyright 2010 BluePocket Limited (bluepocket.com). All rights reserved.
//

#import "NSMutableArray+QueueAdditions.h"

@implementation NSMutableArray (QueueAdditions)

- (void)addTail:(id)obj
{
	[self addObject: obj];
}

-(id)removeHead {
	id firstObject=nil;
	if([self count]>=1){
		firstObject = [[[self objectAtIndex:0] retain] autorelease];
		if([self count]>=2){
			NSRange range=NSMakeRange(1,[self count]-1);
			NSArray *remainingElements=[self subarrayWithRange:range];
			[self removeAllObjects];
			[self addObjectsFromArray:remainingElements];
		}
	}
	return firstObject;
}

@end