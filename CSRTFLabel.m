//
//  RTFLabel.m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 07/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CSRTFLabel.h"
#import <QuartzCore/QuartzCore.h>
#import "CSRenderingCommand.h"
#import "CSRTFTextParserDelegate.h"
#import "CSRenderingCommand.h"

#pragma mark -
@implementation CSRTFLabel

@synthesize _renderingCommands;
@synthesize fontSize;
@synthesize _lineHeight;
@synthesize fontName;
@synthesize bold;
@synthesize lineSpacing;
@synthesize contextFactory;

static const	CGFloat	kDefaultFontSize=14.0;
static const	CGFloat	kDefaultLineSpacing=2.0;
static			NSString*	kDefaultFontName=@"Helvetica";

-(id)initWithFrame:(CGRect)frame {
	if((self=[super initWithFrame:frame])){
		// flip the CALayer's Y-axis to match the direction of Quartz's Y-axis
		CALayer *caLayer=self.layer;
		CGAffineTransform xform = CGAffineTransformMakeScale(1.0, -1.0);
		[caLayer setAffineTransform:xform];
		
		self.backgroundColor=[UIColor clearColor];
		self.fontName=kDefaultFontName;
		self.fontSize=kDefaultFontSize;
		self.lineSpacing=kDefaultLineSpacing;
	}
	return self;
}
		
-(void)dealloc {
	[_renderingCommands release];
	[fontName release];
	[contextFactory release];
	
	[super dealloc];
}

-(void)setText:(NSString*)rtfText {
	NSData *data=[rtfText dataUsingEncoding:NSUTF8StringEncoding];
	NSXMLParser *parser=[[NSXMLParser alloc] initWithData:data];
	
	CSRTFTextParserDelegate *delegate=[[CSRTFTextParserDelegate alloc] init];
	parser.delegate=delegate;
	[parser parse];
	
	self._renderingCommands=[delegate createRenderingCommands];
}

-(void)drawRect:(CGRect)rect {
	if(!_renderingCommands){
		return;
	}
	
	_lineHeight=fontSize;
	
	CGContextRef context=UIGraphicsGetCurrentContext();
	CGFloat yOffset;//=116;
	CGFloat yOffsetFix=18; // TODO: fix this
	yOffset=rect.size.height-yOffsetFix+round(yOffsetFix / 4.0f);
	CGContextSetTextPosition(context, 0.0f, yOffset);
	CGContextSetShouldSmoothFonts(context,TRUE);
	CGContextSetTextDrawingMode(context, kCGTextFill);
	
	CSRendererStyleContext *labelStyleCtx=[contextFactory createNewContext];
	labelStyleCtx.lineSpacing=self.lineSpacing;
	
	for (CSRenderingCommand *command in _renderingCommands) {
		[command executeWithCGContext:context styleContext:labelStyleCtx];
	}

//	CGPoint currentPosition=CGContextGetTextPosition(context);
//	CGFloat widgetHeight=currentPosition.y-self._lineHeight-self.lineSpacing;
//	self.frame=CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, widgetHeight);
}

@end

