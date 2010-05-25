//
//  RTFTextParserDelegate.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 08/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSStack.h"

@interface CSRTFTextParserDelegate : NSObject {
	NSMutableArray	*_commands;
	CSStack			*_tagStack;
}

@property(nonatomic,assign)	NSMutableArray	*_commands;
@property(nonatomic,assign)	CSStack			*_tagStack;

-(NSArray*)createRenderingCommands;

@end
