//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Sanjay Shah on 2017-10-05.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property NSString * name;
@property NSInteger * age;
@property Doctor *doctor;
@property BOOL healthCard;
//@property NSArray *symptoms;
@property NSMutableArray * prescriptions;


-(instancetype) initWithValues:(NSString*) patientName age:(NSInteger*) age doctor:(Doctor*) doctor healthCard:(BOOL) healthCard prescriptions:(NSMutableArray *) prescriptions;
-(void) visitDoctor:(Doctor*) doc;
-(void) requestMedication:(NSArray*) symtoms;





@end
