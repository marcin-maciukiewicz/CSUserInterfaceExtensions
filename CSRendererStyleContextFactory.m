/*
 *  CSRendererStyleContextFactory.m
 *  CSUserInterfaceExtensions
 *
 *  Created by Marcin Maciukiewicz on 09/05/2010.
 *  Copyright 2010 __MyCompanyName__. All rights reserved.
 *
 */
#import "CSRendererStyleContextFactory.h"

@implementation CSRendererStyleContextFactory

-(CSRendererStyleContext*)createNewContext {
	[NSException raise:NSGenericException format:@"Abstract method."];
	return nil;
}

@end


