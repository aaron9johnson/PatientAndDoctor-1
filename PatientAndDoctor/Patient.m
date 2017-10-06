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


-(instancetype) initWithValues:(NSString*) patientName age:(NSInteger*) age doctor:(Doctor*) doctor healthCard:(BOOL) healthCard prescriptions:(NSMutableArray*) prescriptions{
    
    self = [super init];
    if (self){
        
        self.name = patientName;
        self.age = age;
        self.doctor = doctor;
        self.healthCard = healthCard;
  //     self.symptoms = symptoms;
        self.prescriptions = prescriptions;
        
        NSLog(@"A patient is constructed with a all details");
        
    }
    return self;
}



//if a patient wants to visit a doctor, the doctor must accept him.

-(void) visitDoctor:(Doctor*) doc {
    [self.doctor acceptPatient:self];
    
}


//if a patient requests medication, the doctor can prescribe him

-(void) requestMedication:(NSArray*) symtoms {
    NSString *prescription = [self.doctor prescribeMedication:self symptoms:symtoms];
    NSLog(@"Prescribing: %@", prescription);
    NSLog(@"These are the list of all his/her prescriptions: %@", _prescriptions);
    
}


@end
