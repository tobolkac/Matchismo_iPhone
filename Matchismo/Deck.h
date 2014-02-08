//
//  Deck.h
//  Matchismo
//
//  Created by Clay Tobolka on 2/7/14.
//  Copyright (c) 2014 Clay Tobolka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *) card atTop:(BOOL) atTop;
- (void) addCard:(Card *)card;

- (Card *) drawRandomCard;

@end
