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
        
        Doctor * doc = [[Doctor alloc] initWithValues:@"Sanjay" spec:@"Physio" ];
        
        Patient * pat = [[Patient alloc] initWithValues:@"nik" age:22 doctor:doc healthCard:true symptoms:symtoms1];
        Patient * pat2 = [[Patient alloc] initWithValues:@"Paul" age:25 doctor:doc healthCard:true symptoms:symtoms2];
        
        [pat visitDoctor:doc];
        [pat requestMedication:symtoms1];
        
        
        


        
        
    }
    return 0;
}
