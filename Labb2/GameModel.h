//
//  GameModel.h
//  Labb2
//
//  Created by will on 2018-01-23.
//  Copyright © 2018 will. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject
@property (nonatomic) NSString *questionText, *answer1, *answer2, *answer3, *answer4, *correctAnswer;
@property (nonatomic) NSDictionary *question;
@property (nonatomic) NSMutableArray *questionArray;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger guessAttempts;
@property (nonatomic) BOOL alreadyGuessed;

- (NSDictionary*) generateQuestion;
- (BOOL) isAnswerCorrect: (NSString*) guess;

@end
