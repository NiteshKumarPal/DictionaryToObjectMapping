//
//  Parser.m
//  ObjectMapping
//
//  Created by Webonise on 02/08/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import "Parser.h"
#import <objc/runtime.h>
@implementation Parser
-(id)dictionaryToObjectMappingForObject:(id)object fromDictionary:(NSDictionary*)dict
{
    
    unsigned count,testCount;
    objc_property_t *properties = class_copyPropertyList([object class], &count);
    
    for (int i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        NSLog(@"present key:-%@",key);
        if([[object valueForKey:key] isKindOfClass:[NSObject class]]){
            id testObj=[object valueForKey:key];
            objc_property_t *testProperties=class_copyPropertyList([testObj class], &testCount);
            //for composite objects
            if(testCount>1){
                testObj=[self dictionaryToObjectMappingForObject:testObj fromDictionary:[dict objectForKey:key]];
                //NSLog(@"%@",test);
                [object setValue:testObj forKey:key];
                continue;
            }
            
            //for an object which is an array
            if([[object valueForKey:key] isKindOfClass:[NSArray class]]){
                
                id testObj=[object valueForKey:key];
                NSMutableArray *objectArr=[[NSMutableArray alloc]init];
                NSArray *testDictArr=[dict objectForKey:key];
                unsigned arrCount=[testDictArr count];
                for(int i = 0 ;i < arrCount ; i++){ 
                    id obj=[self dictionaryToObjectMappingForObject:[testObj objectAtIndex:i] fromDictionary:[testDictArr objectAtIndex:i]];
                    [objectArr addObject:obj];
                }
                //NSLog(@"the array of dictinary is :-%@",testDictArr);
                [object setValue:objectArr forKey:key];
                continue;
            }
            
        }
        
        [object setValue:[dict valueForKey:key] forKey:key];
    }
    
    return object;
}

@end
