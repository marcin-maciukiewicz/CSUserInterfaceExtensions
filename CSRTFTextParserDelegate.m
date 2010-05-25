//
//  RTFTextParserDelegate.m
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 08/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CSRTFTextParserDelegate.h"
#import "CSRenderingCommand.h"
#import <NSMutableArray+StackAdditions.h>

@implementation CSRTFTextParserDelegate

@synthesize _commands;
@synthesize _tagStack;

-(id)init {
	if((self=[super init])){
		self._commands=[[NSMutableArray alloc] init];
		self._tagStack=[[CSStack alloc] init];
	}
	return self;
}

-(void)dealloc {
	[_commands release];
	
	[super dealloc];
}
-(NSArray*)createRenderingCommands {
	NSArray *result=[[NSArray alloc] initWithArray:_commands];
	return result;
}

#pragma mark -
- (void)parserDidStartDocument:(NSXMLParser *)parser {
//	NSLog(@"parserDidStartDocument");
	// setup regular font
//	SetupFontCommand *cmd=[[SetupFontCommand alloc] initWithTagName:@"@p"];
//	[_commands addObject:cmd];
//	[cmd release];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict {
	CSRenderingCommand *cmd;
//	NSLog(@"didStartElement %@",elementName);
	[_tagStack push:elementName];
	if([elementName isEqualToString:@"br"]){
		// break line
		cmd=[[BreakLineCommand alloc] init];
	} else {
		cmd=[[SetupFontCommand alloc] initWithTagName:elementName];
	}
	[_commands addObject:cmd];
	[cmd release];

}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qName {
//	NSLog(@"didEndElement %@",elementName);
	[_tagStack pop];
	if(![elementName isEqualToString:@"br"]){
		NSString *previousElementName=[_tagStack peek];
//		NSLog(@"previous element: %@",previousElementName);
		// setup regular font
		SetupFontCommand *cmd=[[SetupFontCommand alloc] initWithTagName:previousElementName];
		[_commands addObject:cmd];
		[cmd release];
	}
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
//	NSLog(@"foundCharacters");
	// print text
	ShowTextCommand *cmd=[[ShowTextCommand alloc] initWithText:string];
	[_commands addObject:cmd];
	[cmd release];
}
@end
