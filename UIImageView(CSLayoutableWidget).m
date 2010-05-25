//
//  UIImage(LayoutableWidget).m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 18/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UIImageView(CSLayoutableWidget).h"

@implementation UIImageView(CSLayoutableWidget)

-(CGSize)preferredSize {
	CGSize result=self.image.size;
	return result;
}

-(void)setFrame:(CGRect)newFrame {
	[super setFrame:newFrame];
}

-(CGRect)frame {
	return [super frame];
}

@end
