//
//  UIViewWithLayout.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 11/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSFlowLayoutManager.h"
#import "CSLayoutableWidget.h"

@interface UIViewWithLayout : UIControl {
	CSFlowLayoutManager	*_layout;
}

@property(nonatomic,retain) CSFlowLayoutManager	*_layout;

-(id)initWithLayout:(CSFlowLayoutManager*)layout;
-(void)addSubview:(id<CSLayoutableWidget>)view;

@end
