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
#import "PersonOneLocation.h"
#import "TestApi.h"
#import "APIHelper.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize btnApiCall,dictionary,apiHelper;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    //test array of objects
  NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"Rahul" forKey:@"name"];
    [dict setObject:@"Sharma" forKey:@"surname"];
    NSNumber *pAge=[NSNumber numberWithInt:27];
    [dict setObject:pAge forKey:@"age"];
    
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
    NSMutableArray *plocations=[NSMutableArray arrayWithObjects:plocation1,nil];
    person.location=plocations;
    
    
    Parser *parser=[[Parser alloc]init];
    person=[parser dictionaryToObjectMappingForObject:person fromDictionary:dict];
    NSLog(@"%@",person.name);
    NSLog(@"%@",person.surname);
    NSLog(@"%@",person.age);
    PersonLocation *ploc1=[person.location objectAtIndex:1];
    NSLog(@"%@",ploc1.city);
    NSLog(@"%@",ploc1.address);
    
    
    //composite test
    NSMutableDictionary *dict1 = [NSMutableDictionary dictionary];
        [dict1 setObject:@"Rahul" forKey:@"name"];
        [dict1 setObject:@"Sharma" forKey:@"surname"];
        NSNumber *p2Age=[NSNumber numberWithInt:27];
        [dict1 setObject:p2Age forKey:@"age"];
        NSMutableDictionary *loc=[[NSMutableDictionary alloc]init];
        [loc setObject:@"Pune" forKey:@"city"];
        [loc setObject:@"Bhawdhan" forKey:@"address"];
    
        [dict1 setObject:loc forKey:@"location"];
    
    PersonOneLocation *personOneLocation=[[PersonOneLocation alloc]init];
    PersonLocation *ploc=[[PersonLocation alloc]init];
    personOneLocation.location=ploc;
    
    personOneLocation=[parser dictionaryToObjectMappingForObject:personOneLocation fromDictionary:dict1];
    NSLog(@"%@",personOneLocation.name);
    NSLog(@"%@",personOneLocation.surname);
    NSLog(@"%@",personOneLocation.age);
    NSLog(@"%@",personOneLocation.location.city);
    NSLog(@"%@",personOneLocation.location.address);

    
}



-(IBAction)apiCall:(id)sender{
    apiHelper=[[APIHelper alloc]init];
    
    [apiHelper apiCallWithURL:@"http://api.kivaws.org/v1/loans/search.json?status=fundraising" withParameters:nil withLoadingText:@"Loading" withView:self.view];
    apiHelper.delegate=self;
    
}

-(IBAction)seeResult:(id)sender{
    TestApi *testapi=[[TestApi alloc]init];
    ModelLoan *modelLoan=[[ModelLoan alloc]init];
    testapi.loans=[NSMutableArray arrayWithObjects:modelLoan, nil];
    
    Parser *parser=[[Parser alloc]init];
    testapi=[parser dictionaryToObjectMappingForObject:testapi fromDictionary:dictionary];
    
    for(int i=0;i<20;i++){
   ModelLoan *loan=[testapi.loans objectAtIndex:i];
        NSLog(@"%@",loan.name);
    }
}


-(void)apiCallWithResponse:(id)response{
    dictionary=response;
    NSLog(@"%@",dictionary);
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:@"SUCCESS" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

- (void)apiCallWithError:(NSError *)error{
    [apiHelper setShowProgress:NO];
    NSLog(@"error");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
