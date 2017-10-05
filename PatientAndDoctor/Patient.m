//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Sanjay Shah on 2017-10-05.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

//-(instancetype) init{
//
//    self = [super init];
//
//    if (self){
//        NSLog(@"A patient is constructed with a no details");
//    }
//    return self;
//}


-(instancetype) initWithValues:(NSString*) patientName age:(NSInteger*) age doctor:(Doctor*) doctor healthCard:(BOOL) healthCard symptoms:(NSArray*) symptoms{
    
    self = [super init];
    if (self){
        
        self.name = patientName;
        self.age = age;
        self.doctor = doctor;
        self.healthCard = healthCard;
        self.symptoms = symptoms;
        
        
        NSLog(@"A patient is constructed with a all details");
        
    }
    return self;
}





-(void) visitDoctor:(Doctor*) doc {
    [self.doctor acceptPatient:self];
    
}

-(void) requestMedication:(NSArray*) symtoms {
    NSString *prescription = [self.doctor prescribeMedication:self];
    NSLog(@"%@", prescription);
    
}


//A patient should be able to visit a doctor. Tip: This is an action that the patient is executing and requires an instance of a doctor to do so.

@end
