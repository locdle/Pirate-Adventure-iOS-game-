//
//  LLTile.h
//  Pirate Adventure
//
//  Created by LOC LE on 2/14/14.
//  Copyright (c) 2014 LOC LE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLArmor.h"
#import "LLWeapon.h"

@interface LLTile : NSObject
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) LLWeapon *weapon;
@property (strong, nonatomic) LLArmor *armor;
@property (nonatomic) int healthEffect;

@end
