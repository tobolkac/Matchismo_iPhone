//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Clay Tobolka on 2/7/14.
//  Copyright (c) 2014 Clay Tobolka. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (weak, nonatomic) IBOutlet UIImageView *logoImage;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if(!_deck)
    {
        _deck = [self createDeck];
    }
    
    return _deck;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Cards Flipped: %d", self.flipCount];
}


- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        UIImage *cardImage = [UIImage imageNamed:@"longhorn_logo"];
        [self.logoImage setImage:cardImage];
        [sender setTitle:nil forState:UIControlStateNormal];
    }
    else
    {
        Card *card = [self.deck drawRandomCard];
        if(card)
        {
            [self.logoImage setImage:nil];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
        else
        {
            [sender removeFromSuperview];
            [self.logoImage removeFromSuperview];
        }
    }
    
}

@end
