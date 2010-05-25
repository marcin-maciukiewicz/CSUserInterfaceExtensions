//
//  UITextField(LayoutableWidget).m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 20/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UITextField(CSLayoutableWidget).h"


@implementation UITextField(CSLayoutableWidget)

-(CGSize)preferredSize {
	CGSize result;
	CGFloat widgetWidth;
	CGSize textSize=[self.text sizeWithFont:self.font forWidth:self.frame.size.width lineBreakMode:UILineBreakModeWordWrap];
	if(self.frame.size.width<=0){
		if(self.clearButtonMode==UITextFieldViewModeAlways){
			widgetWidth=textSize.width+40;
		} else {
			widgetWidth=textSize.width;
		}
	} else {
		widgetWidth=self.frame.size.width;
	}
	result=CGSizeMake(widgetWidth,textSize.height);
	return result;
}

-(void)setFrame:(CGRect)newFrame {
	[super setFrame:newFrame];
}

-(CGRect)frame {
	return [super frame];
}

@end
