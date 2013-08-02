//
//  Person.h
//  ObjectMapping
//
//  Created by Webonise on 02/08/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonLocation.h"
@interface Person : NSObject
@property (retain,nonatomic) NSString *name;
@property (retain,nonatomic) NSString *surname;
@property (retain,nonatomic) NSNumber *age;
@property (retain,nonatomic) NSArray *location;
@end
