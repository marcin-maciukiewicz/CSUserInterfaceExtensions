//
//  RendererStyleContext.h
//  TabBarApp
//
//  Created by Marcin Maciukiewicz on 09/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSRendererStyle.h"

@interface CSRendererStyleContext : NSObject {
	CGFloat	lineHeight;
	CGFloat	lineSpacing;
}

@property						CGFloat	lineHeight;
@property						CGFloat	lineSpacing;

-(CSRendererStyle*)createStyleForTag:(NSString*)tagName;

@end
