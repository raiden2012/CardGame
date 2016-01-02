//
//  Card.m
//  CardGame
//
//  Created by Wei Tu on 15/8/15.
//  Copyright (c) 2015 Wei Tu. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards{
    int score = 0;
    for ( Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}
-(BOOL)isChosen
{
    return self.chosen;
}

-(BOOL)isMatched
{
    return self.matched;
}
@end
