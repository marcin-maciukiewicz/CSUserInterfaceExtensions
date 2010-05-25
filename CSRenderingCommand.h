//
//  RenderingCommand.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 08/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSRendererStyleContext.h"

@interface CSRenderingCommand : NSObject {
}

-(void)executeWithCGContext:(CGContextRef)context styleContext:(CSRendererStyleContext*)stylecContext;

@end

#pragma mark -
@interface BreakLineCommand : CSRenderingCommand 
@end

#pragma mark -
@interface ShowTextCommand : CSRenderingCommand {
	NSString	*_plainText;
}
@property(nonatomic,retain)	NSString	*_plainText;

-(id)initWithText:(NSString*)plainText;
@end

#pragma mark -
@interface SetupFontCommand : CSRenderingCommand {
	NSString	*_tagName;
}

@property(nonatomic,retain)	NSString	*_tagName;

-(id)initWithTagName:(NSString*)tagName;
@end
