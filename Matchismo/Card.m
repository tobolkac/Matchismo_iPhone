//
//  Card.m
//  Matchismo
//
//  Created by Clay Tobolka on 2/7/14.
//  Copyright (c) 2014 Clay Tobolka. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *c in otherCards)
    {
    
        if ([c.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}

@end
