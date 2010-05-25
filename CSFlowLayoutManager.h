//
//  FlowLayoutManager.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 11/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSLayoutableWidget.h"

@interface CSFlowLayoutManager : NSObject {
	UIView			*_view;
	NSMutableArray	*_subviews;
	CGSize			spacing;
	CGSize			padding;
}

@property(nonatomic,retain)	UIView			*_view;
@property(nonatomic,assign)	NSMutableArray	*_subviews;
@property					CGSize			spacing;
@property					CGSize			padding;

-(id)initWithView:(UIView*)view;
-(void)addSubview:(id<CSLayoutableWidget>)subview;
-(void)layoutSubviews;

@end
