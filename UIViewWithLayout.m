//
//  UIViewWithLayout.m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 11/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UIViewWithLayout.h"

@implementation UIViewWithLayout

@synthesize _layout;

-(id)initWithLayout:(CSFlowLayoutManager*)layout {
	if((self=[super init])){
		self._layout=layout;
	}
	return self;
}

-(void)dealloc {
	[_layout release];

	[super dealloc];
}

-(void)addSubview:(id<CSLayoutableWidget>)view {
	[super addSubview:view];
	[_layout addSubview:view];
}

-(void)layoutSubviews {
	[_layout layoutSubviews];
}

@end
