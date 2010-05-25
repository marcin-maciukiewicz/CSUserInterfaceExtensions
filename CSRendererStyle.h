//
//  RendererStyle.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 09/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CSRendererStyle : NSObject {
	UIColor		*color;
	NSString	*fontName;
	CGFloat		fontSize;
}

@property(nonatomic,retain)	UIColor		*color;
@property(nonatomic,retain)	NSString	*fontName;
@property					CGFloat		fontSize;

@end

