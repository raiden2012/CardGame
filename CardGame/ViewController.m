//
//  ViewController.m
//  CardGame
//
//  Created by Wei Tu on 11/8/15.
//  Copyright (c) 2015 Wei Tu. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (strong, nonatomic) PlayingCardDeck *playingDeck;
@property (nonatomic, strong) CardMatchingGame *game;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *CardButtons;
@end

@implementation ViewController

- (CardMatchingGame *)game
{
    if(!_game)
    {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.CardButtons count] usingDeck:self.playingDeck];
    }
    return _game;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (PlayingCardDeck *)playingDeck{
    if(!_playingDeck){
        _playingDeck = [[PlayingCardDeck alloc] init];
    }
    return  _playingDeck;
}


- (IBAction)touchCardButton:(UIButton *)sender {
    NSUInteger cardIdndex = [self.CardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIdndex];
    [self updateUI];
}

- (void)updateUI
{
    for (UIButton *cardButton in self.CardButtons) {
        NSUInteger cardIndex = [self.CardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:(NSString *)[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:(UIImage *) [self backgroundForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString  stringWithFormat:@"Score : %ld ", self.game.score];
}

- (NSString *) titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *) backgroundForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChosen ? @"CardFront" : @"CardBack"];
}
@end
