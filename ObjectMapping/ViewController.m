//
//  ViewController.m
//  ObjectMapping
//
//  Created by Webonise on 02/08/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import "ViewController.h"
#import "Parser.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
  NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"Rahul" forKey:@"name"];
    [dict setObject:@"Sharma" forKey:@"surname"];
    NSNumber *pAge=[NSNumber numberWithInt:27];
    [dict setObject:pAge forKey:@"age"];
//   NSMutableDictionary *loc=[[NSMutableDictionary alloc]init];
//    [loc setObject:@"Pune" forKey:@"city"];
//    [loc setObject:@"Bhawdhan" forKey:@"address"];
    
    //[dict setObject:loc forKey:@"location"];
    
    NSMutableDictionary *loc1=[[NSMutableDictionary alloc]init];
    [loc1 setObject:@"Pune" forKey:@"city"];
    [loc1 setObject:@"Bhawdhan" forKey:@"address"];
    
    NSMutableDictionary *loc2=[[NSMutableDictionary alloc]init];
    [loc2 setObject:@"Bhopal" forKey:@"city"];
    [loc2 setObject:@"Satna" forKey:@"address"];
    
    NSMutableDictionary *loc3=[[NSMutableDictionary alloc]init];
    [loc3 setObject:@"Dehradun" forKey:@"city"];
    [loc3 setObject:@"Bhaniyawala" forKey:@"address"];
    
    NSMutableArray *lacations=[NSMutableArray arrayWithObjects:loc1,loc2,loc3, nil];
    [dict setObject:lacations forKey:@"location"];
    
    NSLog(@"%@",dict);
   
    Person *person=[[Person alloc]init];
    PersonLocation *plocation1=[[PersonLocation alloc]init];
    PersonLocation *plocation2=[[PersonLocation alloc]init];
    PersonLocation *plocation3=[[PersonLocation alloc]init];
    NSMutableArray *plocations=[NSMutableArray arrayWithObjects:plocation1,plocation2,plocation3, nil];
    person.location=plocations;
    
    
    Parser *parser=[[Parser alloc]init];
    person=[parser dictionaryToObjectMappingForObject:person fromDictionary:dict];
    NSLog(@"%@",person.name);
    NSLog(@"%@",person.surname);
    NSLog(@"%@",person.age);
    PersonLocation *ploc1=[person.location objectAtIndex:1];
    NSLog(@"%@",ploc1.city);
    NSLog(@"%@",ploc1.address);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
