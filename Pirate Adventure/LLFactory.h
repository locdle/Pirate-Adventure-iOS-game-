//
//  LLFactory.h
//  Pirate Adventure
//
//  Created by LOC LE on 2/14/14.
//  Copyright (c) 2014 LOC LE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLCharacter.h"
#import "LLBoss.h"

@interface LLFactory : NSObject

-(NSArray *)tiles;
-(LLCharacter *) character;
-(LLBoss *) boss;

@end
