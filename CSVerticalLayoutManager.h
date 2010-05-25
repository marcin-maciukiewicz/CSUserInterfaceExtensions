//
//  VerticalLayoutManager.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 13/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSLayoutableWidget.h"

enum {
	VerticalAlignTop,
	VerticalAlignCenter,
	VerticalAlignBottom
} typedef VerticalAlign;

enum {
	HorizontalAlignLeft,
	HorizontalAlignCenter,
	HorizontalAlignRight
} typedef HorizontalAlign;

struct {
	CGFloat	top;
	CGFloat	right;
	CGFloat	bottom;
	CGFloat	left;
} typedef Distance;

CG_INLINE Distance DistanceMake(CGFloat top, CGFloat right, CGFloat bottom, CGFloat left) {
	Distance size; size.top = top; size.right = right; size.bottom = bottom; size.left = left; return size;
}

@interface CSVerticalLayoutManager : NSObject {
	VerticalAlign	verticalAlign;
	HorizontalAlign	horizontalAlign;
	UIView			*_view;
	NSMutableArray	*_subviews;
	NSArray			*_visibleSubviews;
	CGSize			spacing;
	Distance		padding;
	BOOL			ignoreHidden;
}

@property(nonatomic,retain)	UIView			*_view;
@property(nonatomic,assign)	NSMutableArray	*_subviews;
@property(nonatomic,assign)	NSArray			*_visibleSubviews;
@property					CGSize			spacing;
@property					Distance		padding;
@property					VerticalAlign	verticalAlign;
@property					HorizontalAlign	horizontalAlign;
@property					BOOL			ignoreHidden;

-(id)initWithView:(UIView*)view;
-(void)addSubview:(UIView*)subview;
-(void)layoutSubviews;
-(NSArray*)allSubviews;

@end
