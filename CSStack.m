//
//  CSStack.m
//  CSUserInterfaceExtensions
//
//  Created by Marcin Maciukiewicz on 09/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CSStack.h"


@implementation CSStack

@synthesize _array;

-(id)init {
	if((self=[super init])){
		self._array=[[NSMutableArray alloc] init];
	}
	return self;
}

-(void)dealloc {
	[_array release];
	
	[super dealloc];
}

- (void)push:(id)obj {
	[_array addObject: obj];
}

-(id)pop {	
    id lastObject = [[[_array lastObject] retain] autorelease];
    if (lastObject)
        [_array removeLastObject];
    return lastObject;
}

-(id)peek {
	return [_array lastObject];
}


@end
