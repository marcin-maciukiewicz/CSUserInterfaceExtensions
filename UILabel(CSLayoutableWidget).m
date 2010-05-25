//
//  UILabel(LayoutableWidget).m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 13/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UILabel(CSLayoutableWidget).h"


@implementation UILabel(CSLayoutableWidget)

-(CGSize)preferredSize {
	CGSize result=[self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(self.frame.size.width, CGFLOAT_MAX) lineBreakMode:self.lineBreakMode];
	return result;
}

-(void)setFrame:(CGRect)newFrame {
	[super setFrame:newFrame];
}

-(CGRect)frame {
	return [super frame];
}

@end
