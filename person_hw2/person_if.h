//
//  person_if.h
//  person_hw2
//
//  Created by Christina Francis on 9/9/13.
//  Copyright (c) 2013 Christina Francis. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef person_hw2_person_if_h
#define person_hw2_person_if_h
#endif

@interface Person : NSObject

@ property NSString * name;
@ property NSNumber * zip;

-(id) init;
- (NSComparisonResult)compare:( Person *) otherPerson;

@end


