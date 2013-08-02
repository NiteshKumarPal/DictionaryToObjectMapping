//
//  TestApi.m
//  ParsingUsingModalClasses
//
//  Created by Nithal Paldewar on 02/07/13.
//  Copyright (c) 2013 Webonise Lab. All rights reserved.
//

#import "TestApi.h"


@implementation TestApi

@synthesize paging;
@synthesize loans;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[TestApi alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        
        Paging = [[ModelPaging alloc] initWithDictionary:[dictionary objectForKey:@"paging"]];
        
        NSArray* temp =  [dictionary objectForKey:@"loans"];
        Loans =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [Loans addObject:[ModelLoan objectWithDictionary:d]];
        }
    }
    return self;
}

*/
@end


@implementation ModelPaging

@synthesize page;
@synthesize total;
@synthesize page_size;
@synthesize pages;
/*

+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[ModelPaging alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        Page = [dictionary objectForKey:@"page"];
        Total = [dictionary objectForKey:@"total"];
        Page_size = [dictionary objectForKey:@"page_size"];
        Pages = [dictionary objectForKey:@"pages"];
    }
    return self;
}
*/

@end


@implementation ModelDescription

@synthesize languages;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[ModelDescription alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        
        NSArray* temp =  [dictionary objectForKey:@"languages"];
        Languages =  [[NSMutableArray alloc] init];
        for (NSDictionary *d in temp) {
            [Languages addObject:d];
        }
    }
    return self;
}*/


@end


@implementation ModelImage

@synthesize id;
@synthesize template_id;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[ModelImage alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        Id = [dictionary objectForKey:@"id"];
        Template_id = [dictionary objectForKey:@"template_id"];
    }
    return self;
}
*/

@end


@implementation ModelGeo

@synthesize level;
@synthesize pairs;
@synthesize type;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[ModelGeo alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        Level = [dictionary objectForKey:@"level"];
        Pairs = [dictionary objectForKey:@"pairs"];
        Type = [dictionary objectForKey:@"type"];
    }
    return self;
}

*/
@end


@implementation ModelLocation

@synthesize country_code;
@synthesize country;
@synthesize town;
@synthesize geo;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[ModelLocation alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        Country_code = [dictionary objectForKey:@"country_code"];
        Country = [dictionary objectForKey:@"country"];
        Town = [dictionary objectForKey:@"town"];
        
        Geo = [[ModelGeo alloc] initWithDictionary:[dictionary objectForKey:@"geo"]];
    }
    return self;
}
*/

@end


@implementation ModelLoan

@synthesize id;
@synthesize name;
@synthesize description;
@synthesize status;
@synthesize funded_amount;
@synthesize basket_amount;
@synthesize image;
@synthesize activity;
@synthesize sector;
@synthesize use;
@synthesize location;
@synthesize partner_id;
@synthesize posted_date;
@synthesize planned_expiration_date;
@synthesize loan_amount;
@synthesize borrower_count;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary
{
    id obj = [[ModelLoan alloc] initWithDictionary:dictionary];
    return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
    self=[super init];
    if(self)
    {
        Id = [dictionary objectForKey:@"id"];
        Name = [dictionary objectForKey:@"name"];
        
        Description = [[ModelDescription alloc] initWithDictionary:[dictionary objectForKey:@"description"]];
        Status = [dictionary objectForKey:@"status"];
        Funded_amount = [dictionary objectForKey:@"funded_amount"];
        Basket_amount = [dictionary objectForKey:@"basket_amount"];
        
        Image = [[ModelImage alloc] initWithDictionary:[dictionary objectForKey:@"image"]];
        Activity = [dictionary objectForKey:@"activity"];
        Sector = [dictionary objectForKey:@"sector"];
        Use = [dictionary objectForKey:@"use"];
        
        Location = [[ModelLocation alloc] initWithDictionary:[dictionary objectForKey:@"location"]];
        Partner_id = [dictionary objectForKey:@"partner_id"];
        Posted_date = [dictionary objectForKey:@"posted_date"];
        Planned_expiration_date = [dictionary objectForKey:@"planned_expiration_date"];
        Loan_amount = [dictionary objectForKey:@"loan_amount"];
        Borrower_count = [dictionary objectForKey:@"borrower_count"];
    }
    return self;
}
 */


@end