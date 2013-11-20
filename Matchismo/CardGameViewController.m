//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Marcelo Mazzotti on 17/11/13.
//  Copyright (c) 2013 Marcelo Mazzotti. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (strong, nonatomic)  Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSUInteger flipCount;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(NSUInteger)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %u", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:UIControlStateNormal];
        [sender setTitle:[[self.deck drawRandomCard] contents] forState:UIControlStateNormal];
    }
    
    self.flipCount++;
}

@end
