//
//  main.m
//  person_hw2
//
//  Created by Christina Francis on 9/9/13.
//  Copyright (c) 2013 Christina Francis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person_if.h"

@implementation Person: NSObject

- (id) init{
    self = [super init];
    if (!self)
        ;
    return self;
}
- (NSComparisonResult)compare:(Person *)otherObject {
    return [self.zip compare:otherObject.zip];
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person * p1 = [[Person alloc] init];
        [ p1 setName:@"Noel" ];
        [ p1 setZip:@435];
        
        Person * p2 = [[Person alloc] init];
        [ p2 setName:@"Joe ZDan" ];
        [ p2 setZip:@434];
        
        Person * p3 = [[Person alloc] init];
        [ p3 setName:@"Joe Steve" ];
        [ p3 setZip:@436];
        
        Person * p4 = [[Person alloc] init];
        [ p4 setName:@"Noel Fred" ];
        [ p4 setZip:@433];
        
        Person * p5 = [[Person alloc] init];
        [ p5 setName:@"Fred Noel" ];
        [ p5 setZip:@439];
        
        Person * i ;
        NSArray * Person_array = [ NSArray array ];
        Person_array = [ [NSArray alloc] initWithObjects:p1,p2,p3,p4,p5, nil];
      
        
        BOOL isExit = NO;
        int choice;
        char name[40] ;
        int zip;
        
        while(!isExit){
            printf("Choose : 1. Add person entry 2. Stop ");
            scanf("%d", &choice);
            if (choice == 2)
                isExit = YES;
            else{
            printf("Enter person name - ");
            scanf("%s",name);
            printf("Enter Zip code - ");
            scanf("%d", &zip);
               
            Person * p6 = [[Person alloc] init];
            [p6 setName: [ NSString stringWithUTF8String:name ]];
            [p6 setZip: [ NSNumber numberWithInt:zip ]];
            Person_array = [Person_array arrayByAddingObject:p6];
            }
            
        }
        
        //NSLog(@"%s",@encode(NSString *));
        
        for ( i in Person_array){
            NSLog(@"%@--%@", [ i name ], [ i zip ]);
        }
        
        Person_array= [ Person_array sortedArrayUsingSelector:@selector(compare:)];
       // compare is custom implemented and is taken here.
        
        
        NSLog(@"After sorting based on zip code");
        
        for ( i in Person_array)
            NSLog(@"%@--%@", [ i name ],[ i zip ]);
    
        
    }
    return 0;
}

