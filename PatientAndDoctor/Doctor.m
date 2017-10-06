//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Sanjay Shah on 2017-10-05.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


//-(instancetype) init{
//
//        self = [super init];
//
//        if (self){
//            NSLog(@"A Doc is created with a blank specialisation and a blank name");
//
//        }
//    return self;
//}



-(instancetype) initWithValues:(NSString*) docName spec:(NSString*) spec  acceptedPatients:(NSMutableArray*) acceptedPatients {
    
    self = [super init];
    if (self){
        
        self.name = docName;
        self.specialization = spec;
        self.acceptedPatients = acceptedPatients;
        
        NSLog(@"A Doc is created with a  specialisation and name");
        
    }
    return self;
}


//if a patient has a health card, they are accepted, and added to the array

-(BOOL) acceptPatient: (Patient*) p{
    if ([p healthCard] == YES){
        
        [self.acceptedPatients addObject:p];
        NSLog(@"He has a health card, accepted patient");
        return true;
    }
    else return false;
}





// if a patient is in the list of accepted patients, he receives a prescription

-(NSString*) prescribeMedication:(Patient*) p symptoms:(NSArray *)symptoms{
    if ([self.acceptedPatients containsObject:p]){
        
        if([symptoms containsObject:@"Fever"]){
            [[p prescriptions] addObject:@"Panadol"];
           return @"Panadol";
        
            
        }
        return @"You dont have any illnesses";
    }
    return @"I cant presribe you brah";
}

@end
