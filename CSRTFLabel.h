//
//  RTFLabel.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 07/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSRendererStyleContextFactory.h"

@interface CSRTFLabel : UIView {
	NSArray		*_renderingCommands;
	CGFloat		fontSize;
	CGFloat		_lineHeight;
	NSString	*fontName;
	BOOL		bold;
	CGFloat		lineSpacing;
	CSRendererStyleContextFactory	*contextFactory;
}

@property(nonatomic,assign)	NSArray	*_renderingCommands;
@property(nonatomic,retain)	NSString	*fontName;
@property(nonatomic,retain)	CSRendererStyleContextFactory	*contextFactory;
@property						BOOL		bold;
@property						CGFloat	fontSize;
@property						CGFloat	_lineHeight;
@property						CGFloat	lineSpacing;

-(void)setText:(NSString*)rtfText;

@end
