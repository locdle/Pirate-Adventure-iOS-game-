//
//  LLCharacter.h
//  Pirate Adventure
//
//  Created by LOC LE on 2/16/14.
//  Copyright (c) 2014 LOC LE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLArmor.h"
#import "LLWeapon.h"

@interface LLCharacter : NSObject

@property (strong, nonatomic) LLArmor *armor;
@property (strong, nonatomic) LLWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
