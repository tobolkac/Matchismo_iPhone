//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Clay Tobolka on 2/7/14.
//  Copyright (c) 2014 Clay Tobolka. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        for (NSString *s in [PlayingCard validSuits])
        {
            for (NSUInteger r = 1; r <= [PlayingCard maxRank]; r++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = s;
                card.rank = r;
                [self addCard:card];
            }
        }
    }
    
    return self;
    
}

@end
