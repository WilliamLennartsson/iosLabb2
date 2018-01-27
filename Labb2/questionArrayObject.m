//
//  questionArrayObject.m
//  Labb2
//
//  Created by will on 2018-01-26.
//  Copyright © 2018 will. All rights reserved.
//

#import "questionArrayObject.h"

@implementation questionArrayObject

-(NSMutableArray*) getAllQuestions {
    NSMutableArray *questionArray = [[NSMutableArray alloc] init];
    
    NSDictionary *question1 = @{@"Question": @"Knape uttalas egentligen ..",
                                @"Answer1": @"Knöppe",
                                @"Answer2": @"Snape",
                                @"Answer3": @"Knäjp",
                                @"Answer4": @"Knapp",
                                @"CorrectAnswer": @"Knäjp"
                                };
    NSDictionary *question2 = @{@"Question": @"Vad är det latinska namnet för Chrilles frisyr?",
                                @"Answer1": @"Gentlos Stilium",
                                @"Answer2": @"Håreum Klockrenum",
                                @"Answer3": @"Damn bro",
                                @"Answer4": @"Broius Fistus",
                                @"CorrectAnswer": @"Håreum Klockrenum"
                                };
    NSDictionary *question3 = @{
                                @"Question":@"Vad är kakans rikitga namn?",
                                @"Answer1":@"Habib",
                                @"Answer2":@"Robbzter",
                                @"Answer3":@"Cookie Degsson",
                                @"Answer4":@"Nils Holgesson",
                                @"CorrectAnswer": @"Cookie Degsson"
                                };
    NSDictionary *question4 = @{@"Question":@"Varför?",
                                @"Answer1":@"Varför vadå?",
                                @"Answer2":@"Va?",
                                @"Answer3":@"Varför inte?",
                                @"Answer4":@"?",
                                @"CorrectAnswer": @"Varför inte?"
                                };
    NSDictionary *question5 = @{@"Question":@"Vad får man om man frågar Chrille?",
                                @"Answer1":@"Inget svar",
                                @"Answer2":@"Två svar",
                                @"Answer3":@"Fyra svar",
                                @"Answer4":@"Fråga kakan",
                                @"CorrectAnswer": @"Inget svar"
                                };
    NSDictionary *question6 = @{@"Question":@"Vad spelar kakan?",
                                @"Answer1":@"Svårfångad",
                                @"Answer2":@"Dota2",
                                @"Answer3":@"CS",
                                @"Answer4":@"Häftig",
                                @"CorrectAnswer": @"Häftig"
                                };
    NSDictionary *question7 = @{@"Question":@"Hur ser man att en bil är från turkiet?",
                                @"Answer1":@"På taket",
                                @"Answer2":@"Huven",
                                @"Answer3":@"Vindruteturkarna",
                                @"Answer4":@"Mattorna",
                                @"CorrectAnswer": @"Vindruteturkarna"
                                };
    NSDictionary *question8 = @{@"Question":@"Vad heter djungelns största djur?",
                                @"Answer1":@"Myra",
                                @"Answer2":@"ENORM",
                                @"Answer3":@"Flodhäst",
                                @"Answer4":@"Zebra",
                                @"CorrectAnswer": @"ENORM"
                                };
    NSDictionary *question9 = @{@"Question":@"",
                                @"Answer1":@"",
                                @"Answer2":@"",
                                @"Answer3":@"",
                                @"Answer4":@"",
                                @"CorrectAnswer": @""
                                };
    NSDictionary *question10 = @{@"Question":@"",
                                 @"Answer1":@"",
                                 @"Answer2":@"",
                                 @"Answer3":@"",
                                 @"Answer4":@"",
                                 @"CorrectAnswer": @""
                                 };
    NSDictionary *question11 = @{@"Question":@"",
                                 @"Answer1":@"",
                                 @"Answer2":@"",
                                 @"Answer3":@"",
                                 @"Answer4":@"",
                                 @"CorrectAnswer": @""
                                 };
    NSDictionary *question12 = @{@"Question":@"",
                                 @"Answer1":@"",
                                 @"Answer2":@"",
                                 @"Answer3":@"",
                                 @"Answer4":@"",
                                 @"CorrectAnswer": @""
                                 };
    NSDictionary *question13 = @{@"Question":@"",
                                 @"Answer1":@"",
                                 @"Answer2":@"",
                                 @"Answer3":@"",
                                 @"Answer4":@"",
                                 @"CorrectAnswer": @""
                                 };
    [questionArray addObject:question1];
    [questionArray addObject:question2];
    [questionArray addObject:question3];
    [questionArray addObject:question4];
    [questionArray addObject:question5];
    [questionArray addObject:question6];
    [questionArray addObject:question7];
    [questionArray addObject:question8];
    [questionArray addObject:question9];
    [questionArray addObject:question10];
    [questionArray addObject:question11];
    [questionArray addObject:question12];
    [questionArray addObject:question13];
    
    
    
    return questionArray;
}
@end
