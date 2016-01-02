//
//  PlayingCard.h
//  CardGame
//
//  Created by Wei Tu on 15/8/15.
//  Copyright (c) 2015 Wei Tu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
