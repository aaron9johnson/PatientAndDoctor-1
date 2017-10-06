//
//  main.m
//  PatientAndDoctor
//
//  Created by Sanjay Shah on 2017-10-05.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        NSArray* symtoms1 = [NSArray arrayWithObjects:@"Fever", @"Cold", nil];
        NSArray* symtoms2 = NULL;
        
        NSMutableArray *prescriptionsArr = [[NSMutableArray alloc] init];
         NSMutableArray *acceptedPatientsArr = [[NSMutableArray alloc] init];
        
        
        Doctor * doc = [[Doctor alloc] initWithValues:@"Sanjay" spec:@"Physio" acceptedPatients:acceptedPatientsArr];
        
        Patient * pat = [[Patient alloc] initWithValues:@"Nik" age:((NSInteger*) 22) doctor:doc healthCard:true  prescriptions:prescriptionsArr];
        
        Patient * pat2 = [[Patient alloc] initWithValues:@"Paul" age:(NSInteger*) 25 doctor:doc healthCard:true prescriptions:prescriptionsArr];
        

//        [pat visitDoctor:doc];
//        [pat requestMedication:symtoms1];
        
        [pat2 visitDoctor:doc];
        [pat2 requestMedication:symtoms2];
        
        
        


        
        
    }
    return 0;
}
