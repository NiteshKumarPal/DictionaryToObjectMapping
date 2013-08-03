//
//  PersonOneLocation.h
//  ObjectMapping
//
//  Created by Webonise on 03/08/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonLocation.h"
@interface PersonOneLocation : NSObject
@property (retain,nonatomic) NSString *name;
@property (retain,nonatomic) NSString *surname;
@property (retain,nonatomic) NSNumber *age;
@property (retain,nonatomic) PersonLocation *location;
@end
