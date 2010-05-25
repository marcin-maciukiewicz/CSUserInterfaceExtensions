//
//  LayoutableWidget.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 11/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol CSLayoutableWidget

-(CGSize)preferredSize;
-(void)setFrame:(CGRect)newFrame;
-(CGRect)frame;

@end
