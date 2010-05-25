//
//  FlowLayoutManager.m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 11/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CSFlowLayoutManager.h"


@implementation CSFlowLayoutManager

@synthesize _view;
@synthesize _subviews;
@synthesize spacing;
@synthesize padding;

-(id)initWithView:(UIView*)view {
	if((self=[super init])){
		self._view=view;
		self._subviews=[[NSMutableArray alloc] init];
		spacing=CGSizeZero;
		padding=CGSizeZero;
	}
	return self;
}

-(void)dealloc {
	[_view release];
	[_subviews release];
	
	[super dealloc];
}

-(void)addSubview:(id<CSLayoutableWidget>)subview {
	[_subviews addObject:subview];
}

-(void)layoutSubviews {
	//CGRect viewFrame=_view.frame;
	CGSize offsets=padding;
	CGFloat rowHeight;
	for (id<CSLayoutableWidget> subview in _subviews) {
		CGSize preferredSize=[subview preferredSize];
		subview.frame=CGRectMake(offsets.width, offsets.height, preferredSize.width, preferredSize.height);
		[(UIView*)subview setNeedsLayout];
		[(UIView*)subview layoutIfNeeded];
		
		if(preferredSize.height>rowHeight){
			rowHeight=preferredSize.height;
		}
		offsets.width+=preferredSize.width+spacing.width;
	}
}

@end
