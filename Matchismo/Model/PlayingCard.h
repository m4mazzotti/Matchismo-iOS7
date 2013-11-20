//
//  PlayingCard.h
//  Matchismo
//
//  Created by Marcelo Mazzotti on 18/11/13.
//  Copyright (c) 2013 Marcelo Mazzotti. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
