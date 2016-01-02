//
//  CardMatchingGame.h
//  CardGame
//
//  Created by Wei Tu on 28/10/15.
//  Copyright © 2015 Wei Tu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

// Designated initializer
- (instancetype) initWithCardCount:(NSUInteger)count usingDeck: (Deck *)deck;

- (void) chooseCardAtIndex:(NSUInteger) index;
- (Card *) cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end
