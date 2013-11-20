//
//  Card.m
//  Matchismo
//
//  Created by Marcelo Mazzotti on 18/11/13.
//  Copyright (c) 2013 Marcelo Mazzotti. All rights reserved.
//

#import "Card.h"

@implementation Card

- (NSInteger)match:(NSArray *)otherCards
{
    NSInteger score = 0;
    
    for (Card *card in otherCards) {
        if ([self.contents isEqualToString:card.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
