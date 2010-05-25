//
//  RendererStyle.m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 09/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CSRendererStyle.h"

#pragma mark -
@implementation CSRendererStyle
	@synthesize	color;
	@synthesize	fontName;
	@synthesize	fontSize;

-(void)dealloc {
	[fontName release];
	
	[super dealloc];
}

@end
