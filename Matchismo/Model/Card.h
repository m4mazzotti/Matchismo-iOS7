//
//  Card.h
//  Matchismo
//
//  Created by Marcelo Mazzotti on 18/11/13.
//  Copyright (c) 2013 Marcelo Mazzotti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (NSInteger)match:(NSArray *)otherCards;
@end
