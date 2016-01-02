//
//  Deck.h
//  CardGame
//
//  Created by Wei Tu on 15/8/15.
//  Copyright (c) 2015 Wei Tu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


-(void) addCard:(Card *) card atTop:(BOOL) atTop;
-(void) addCard:(Card *) card;

-(Card *) drawRandomCard;

@end
