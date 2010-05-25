/*
 *  CSRendererStyleContext.m
 *  CSUserInterfaceExtensions
 *
 *  Created by Marcin Maciukiewicz on 09/05/2010.
 *  Copyright 2010 __MyCompanyName__. All rights reserved.
 *
 */
#include "CSRendererStyleContext.h"

@implementation CSRendererStyleContext

@synthesize	lineHeight;
@synthesize	lineSpacing;


-(void)dealloc {
	[super dealloc];
}

-(CSRendererStyle*)createStyleForTag:(NSString*)tagName {
	[NSException raise:NSGenericException format:@"Abstract method."];
	return nil;
}

@end