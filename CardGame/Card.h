//
//  Card.h
//  CardGame
//
//  Created by Wei Tu on 15/8/15.
//  Copyright (c) 2015 Wei Tu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString* contents;
@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

- (int) match:(NSArray *) otherCards;
- (BOOL) isMatched;
- (BOOL) isChosen;
@end
