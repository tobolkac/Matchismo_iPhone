//
//  PlayingCard.h
//  Matchismo
//
//  Created by Clay Tobolka on 2/7/14.
//  Copyright (c) 2014 Clay Tobolka. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
