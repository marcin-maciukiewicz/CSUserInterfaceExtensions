//
//  RenderingCommand.m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 08/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CSRenderingCommand.h"
#import "CSRendererStyleContext.h"

#pragma mark -
@implementation CSRenderingCommand

-(void)dealloc {
	[super dealloc];
}

-(void)executeWithCGContext:(CGContextRef)context styleContext:(CSRendererStyleContext*)styleContext {
	// do nothing
}

@end

#pragma mark -
@implementation SetupFontCommand : CSRenderingCommand 

@synthesize _tagName;

-(id)initWithTagName:(NSString*)tagName {
	if((self=[super init])){
		self._tagName=tagName;
	}
	return self;
}

-(void)dealloc {
	[_tagName release];
	[super dealloc];
}

-(void)executeWithCGContext:(CGContextRef)context styleContext:(CSRendererStyleContext*)styleContext {
	CSRendererStyle *style=[styleContext createStyleForTag:_tagName];
	CGColorRef color=style.color.CGColor;
	CGContextSetStrokeColorWithColor(context, color); 
	CGContextSetFillColorWithColor(context, color);
	CGContextSelectFont(context, [style.fontName UTF8String], style.fontSize, kCGEncodingMacRoman);
	
	if(style.fontSize>styleContext.lineHeight){
		styleContext.lineHeight=style.fontSize;
	}
}

@end

#pragma mark -
@implementation ShowTextCommand

@synthesize _plainText;

-(id)initWithText:(NSString*)plainText {
	if((self=[super init])){
		self._plainText=plainText;
	}
	return self;
}

-(void)dealloc {
	[_plainText release];
	
	[super dealloc];
}

-(void)executeWithCGContext:(CGContextRef)context styleContext:(CSRendererStyleContext*)styleContext {
	CGContextShowText(context, [_plainText UTF8String], strlen([_plainText UTF8String]));
}
@end


#pragma mark -
@implementation BreakLineCommand

-(void)executeWithCGContext:(CGContextRef)context styleContext:(CSRendererStyleContext*)styleContext {
	CGPoint currentPosition=CGContextGetTextPosition(context);
	CGFloat yOffset=currentPosition.y-styleContext.lineHeight-styleContext.lineSpacing;
	CGContextSetTextPosition(context, 0.0f, yOffset);
}
@end
