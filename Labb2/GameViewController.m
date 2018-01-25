//
//  GameViewController.m
//  Labb2
//
//  Created by will on 2018-01-23.
//  Copyright © 2018 will. All rights reserved.
//

#import "GameViewController.h"
#import "GameModel.h"
@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UITextView *questionTextField;
@property (weak, nonatomic) IBOutlet UIButton *answerBtn1;
@property (weak, nonatomic) IBOutlet UIButton *answerBtn2;
@property (weak, nonatomic) IBOutlet UIButton *answerBtn3;
@property (weak, nonatomic) IBOutlet UIButton *answerBtn4;
@property (nonatomic, strong) GameModel *engine;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (nonatomic, strong) NSDictionary *question;
@property (nonatomic) BOOL finishedRound;
@property (nonatomic) NSMutableArray *ord;
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUp];
    
}

- (IBAction)onClickGenerate:(id)sender {
    
    if (self.finishedRound){
        [self newGame];
    }
    
    self.question = [self.engine generateQuestion];
    
    self.questionTextField.text = self.question[@"Question"];
    [self.answerBtn1 setTitle:self.question[self.ord[0]] forState:UIControlStateNormal];
    [self.answerBtn2 setTitle:self.question[self.ord[1]] forState:UIControlStateNormal];
    [self.answerBtn3 setTitle:self.question[self.ord[2]] forState:UIControlStateNormal];
    [self.answerBtn4 setTitle:self.question[self.ord[3]] forState:UIControlStateNormal];
    
}

- (IBAction)onClickQuess:(UIButton*)sender {
    
    if (!self.engine.alreadyGuessed){
        NSString *playerGuess = sender.titleLabel.text;
        if ([self.engine isAnswerCorrect:playerGuess]){
            self.questionTextField.text = @"Nice";
        }
        [self updateScore];
    }
    
}

-(void) newGame {
    self.engine.score = 0;
    self.engine.guessAttempts = 0;
    [self updateScore];
    for (int i = 0; i < self.ord.count-1; i++){
        int nElements = (int)self.ord.count - i;
        int n = (arc4random()%nElements) + i;
        [self.ord exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}
-(void) updateScore {
    
    NSInteger score = self.engine.score;
    NSInteger guessApt = self.engine.guessAttempts;
    
    
    self.scoreLabel.text = [NSString stringWithFormat:@"✓ %ld \r X %ld ", score, guessApt-score];
    
    
    if (self.engine.guessAttempts == 5){
        self.questionTextField.text = [NSString stringWithFormat:@"HOLY SHIT! You're right again! You nailed %ld out of %ld. Hit generate to play again.", (long)self.engine.score, (long)self.engine.guessAttempts];
        self.finishedRound = YES;
    }
}
-(void) setUp {
    self.engine = [[GameModel alloc]init];
    [self.ord addObject:@"Answer1"];
    [self.ord addObject:@"Answer2"];
    [self.ord addObject:@"Answer3"];
    [self.ord addObject:@"Answer4"];
    //Lägg knapparna i en array för mindre kod
    [self.scoreLabel setNumberOfLines:3];
    self.answerBtn1.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.answerBtn2.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.answerBtn3.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.answerBtn4.titleLabel.adjustsFontSizeToFitWidth = YES;
    [self updateScore];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
