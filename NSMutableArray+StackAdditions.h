//
//  NSMutableArray+StackAdditions.h
//  CFAnimationOne
//
//  Created by Marcin Maciukiewicz on 10/01/2010.
//  Copyright 2010 BluePocket Limited (bluepocket.com). All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSMutableArray (StackAdditions)

-(void)push:(id)element;
-(id)pop;
-(id)peekTest;

@end
