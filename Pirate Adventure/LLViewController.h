//
//  LLViewController.h
//  Pirate Adventure
//
//  Created by LOC LE on 2/14/14.
//  Copyright (c) 2014 LOC LE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LLCharacter.h"
#import "LLBoss.h"



@interface LLViewController : UIViewController

//variables
@property (nonatomic) CGPoint currentPoint;
@property(strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) LLCharacter *character;
@property (strong, nonatomic) LLBoss *boss;

//IBOutlet
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

//IBActions
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(UIButton *)sender;


@end
