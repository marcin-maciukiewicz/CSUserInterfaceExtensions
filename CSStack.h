//
//  CSStack.h
//  CSUserInterfaceExtensions
//
//  Created by Marcin Maciukiewicz on 09/05/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CSStack : NSObject {
	NSMutableArray	*_array;
}

@property(nonatomic,retain) NSMutableArray	*_array;

-(void)push:(id)element;
-(id)pop;
-(id)peek;


@end
