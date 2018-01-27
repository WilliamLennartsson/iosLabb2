//
//  GameModel.m
//  Labb2
//
//  Created by will on 2018-01-23.
//  Copyright © 2018 will. All rights reserved.
//

#import "GameModel.h"
#import "questionArrayObject.h"
@implementation GameModel

-(instancetype) init {
    self = [super init];
    
    if (self){
        self.questionArray = [self getQuestionArray];
        self.score = 0;
        self.guessAttempts = 0;
    }
    
    return self;
}

-(BOOL) isAnswerCorrect:(NSString*) guess{
    BOOL b = NO;
    if ([guess isEqualToString:self.question[@"CorrectAnswer"]]){
        self.score++;
        b = YES;
        
    }
    self.guessAttempts ++;
    self.alreadyGuessed = YES;
    
    return b;
}

-(NSDictionary*) generateQuestion {
    self.alreadyGuessed = NO;
    
    if (self.question){
        [self.questionArray removeObject:self.question];
    }
    if (self.questionArray.count <= 0){
        self.questionArray = [self getQuestionArray];
    }
    int rngIndex = arc4random_uniform((int)self.questionArray.count);
    self.question = self.questionArray[rngIndex];
    
    return self.question;
}



-(NSMutableArray*) getQuestionArray {
    questionArrayObject *qArray = [[questionArrayObject alloc] init];
    NSMutableArray *questionArray = [qArray getAllQuestions];
    return questionArray;

}

@end
