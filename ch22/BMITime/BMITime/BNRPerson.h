//
//  BNRPerson.h
//  BMITime
//
//  Created by Maksim Nosov on 13/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
@property (nonatomic, readonly) double circumferenceOfEarth;
@property (nonatomic, readwrite) double humanPopulation;

// BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end
