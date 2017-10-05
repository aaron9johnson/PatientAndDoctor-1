//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Sanjay Shah on 2017-10-05.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property NSString * specialization;
@property NSString * name;
@property NSMutableDictionary *acceptedPatients;

-(instancetype) initWithValues: (NSString*) docName spec:(NSString*) spec;
-(BOOL) acceptPatient: (Patient*) p;
-(NSString*) prescribeMedication: (Patient*) p;


@end
