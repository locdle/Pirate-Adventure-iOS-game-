//
//  LLFactory.m
//  Pirate Adventure
//
//  Created by LOC LE on 2/14/14.
//  Copyright (c) 2014 LOC LE. All rights reserved.
//

#import "LLFactory.h"
#import "LLTile.h"

@implementation LLFactory

-(NSArray *)tiles{
    
    LLWeapon *bluntedSword = [[LLWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    LLWeapon *pistolWeapon = [[LLWeapon alloc] init];
    pistolWeapon.name = @"Pisstol Weapon";
    pistolWeapon.damage = 17;
    
    LLArmor *steelArmor = [[LLArmor alloc] init];
    steelArmor.name =@"Steel Armor";
    steelArmor.health = 8;
    LLArmor * parrotArmor = [[LLArmor alloc] init];
    parrotArmor.name = @"Parrot Armor";
    parrotArmor.health = 20;
    
    LLTile *tile1 = [[LLTile alloc] init];
    tile1.story= @"Captain, we need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirates Boss. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    
    LLTile *tile2 = [[LLTile alloc] init];
    tile2.story= @"You have come across an armory. Would yo like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take armor";
    
    LLTile *tile3 = [[LLTile alloc] init];
    tile3.story= @"A mysterious dock appears on the horizon. Should we stop and ask for direction?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    LLTile *tile4 = [[LLTile alloc] init];
    tile4.story= @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.armor = parrotArmor;
    tile4.actionButtonName = @"Adopt Parrot";
    
    LLTile *tile5 = [[LLTile alloc] init];
    tile5.story= @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"Use pistol";
    
    LLTile *tile6 = [[LLTile alloc] init];
    tile6.story= @"You have been captured by pirates and are ordered to walk the plank";;
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    LLTile *tile7 = [[LLTile alloc] init];
    tile7.story= @"You have sighted a pirate battle off the coast. Should we interverne?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    LLTile *tile8 = [[LLTile alloc] init];
    tile8.story= @"The legend of the deep. The mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abaondon ship";
    
    LLTile *tile9 = [[LLTile alloc] init];
    tile9.story= @"You have stumble upon a hidden cave of pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName =@"Take treasure";
    
    LLTile *tile10 = [[LLTile alloc] init];
    tile10.story= @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    LLTile *tile11 = [[LLTile alloc] init];
    tile11.story= @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";
    
    LLTile *tile12 = [[LLTile alloc] init];
    tile12.story= @"Your final faceoff with the fearsome pirates boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";

    
    NSMutableArray *randomArray = [[NSMutableArray alloc] initWithObjects:tile2, tile3, tile4, tile5, tile6, tile7, tile8, tile9, tile10, tile11, tile12, nil];
    
//    NSMutableArray *firstColumn =[[NSMutableArray alloc] initWithObjects:tile1, tile2, tile3, nil];
//    
//    NSMutableArray *secondColumn =[[NSMutableArray alloc] initWithObjects:tile4, tile5, tile6, nil];
//    
//    NSMutableArray *thirdColumn =[[NSMutableArray alloc] initWithObjects:tile7, tile8, tile9, nil];
//    
//    NSMutableArray *fourthColumn =[[NSMutableArray alloc] initWithObjects:tile10, tile11, tile12, nil];

    NSMutableArray *firstColumn =[[NSMutableArray alloc] initWithObjects:tile1, randomArray[arc4random()%12], randomArray[arc4random()%12], nil];
    
    NSMutableArray *secondColumn =[[NSMutableArray alloc] initWithObjects:randomArray[arc4random()%12], randomArray[arc4random()%12], randomArray[arc4random()%12], nil];
    
    NSMutableArray *thirdColumn =[[NSMutableArray alloc] initWithObjects:randomArray[arc4random()%12], randomArray[arc4random()%12], randomArray[arc4random()%12], nil];
    
    NSMutableArray *fourthColumn =[[NSMutableArray alloc] initWithObjects:randomArray[arc4random()%12], randomArray[arc4random()%12], randomArray[arc4random()%12], nil];

    
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(LLCharacter *) character
{
    LLArmor *armor = [[LLArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    
    LLWeapon *weapon = [[LLWeapon alloc] init];
    weapon.name = @"Fisis";
    weapon.damage = 10;
    
    LLCharacter *character = [[LLCharacter alloc] init];
    character.health = 100;
    character.armor = armor;
    character.weapon = weapon;
    
    return character;
}

-(LLBoss *) boss
{
    LLBoss *boss = [[LLBoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
