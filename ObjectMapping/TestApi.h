//
//  TestApi.h
//  ParsingUsingModalClasses
//
//  Created by Nithal Paldewar on 02/07/13.
//  Copyright (c) 2013 Webonise Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ModelPaging;
@class ModelDescription;
@class ModelImage;
@class ModelGeo;
@class ModelLocation;
@class ModelLoan;

@interface TestApi : NSObject

@property(nonatomic,strong) ModelPaging * paging;
@property(nonatomic,strong) NSMutableArray * loans;
/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end


@interface ModelPaging : NSObject

@property(nonatomic,strong) NSNumber * page;
@property(nonatomic,strong) NSNumber * total;
@property(nonatomic,strong) NSNumber * page_size;
@property(nonatomic,strong) NSNumber * pages;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end


@interface ModelDescription : NSObject

@property(nonatomic,strong) NSMutableArray * languages;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end


@interface ModelImage : NSObject

@property(nonatomic,strong) NSNumber * id;
@property(nonatomic,strong) NSNumber * template_id;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end


@interface ModelGeo : NSObject


@property(nonatomic,strong) NSString * level;
@property(nonatomic,strong) NSString * pairs;
@property(nonatomic,strong) NSString * type;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end


@interface ModelLocation : NSObject

@property(nonatomic,strong) NSString * country_code;
@property(nonatomic,strong) NSString * country;
@property(nonatomic,strong) NSString * town;
@property(nonatomic,strong) ModelGeo * geo;

/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end


@interface ModelLoan : NSObject

@property(nonatomic,strong) NSNumber * id;
@property(nonatomic,strong) NSString * name;
@property(nonatomic,strong) ModelDescription * description;
@property(nonatomic,strong) NSString * status;
@property(nonatomic,strong) NSNumber * funded_amount;
@property(nonatomic,strong) NSNumber * basket_amount;
@property(nonatomic,strong) ModelImage * image;
@property(nonatomic,strong) NSString * activity;
@property(nonatomic,strong) NSString * sector;
@property(nonatomic,strong) NSString * use;
@property(nonatomic,strong) ModelLocation * location;
@property(nonatomic,strong) NSNumber * partner_id;
@property(nonatomic,strong) NSString * posted_date;
@property(nonatomic,strong) NSString * planned_expiration_date;
@property(nonatomic,strong) NSNumber * loan_amount;
@property(nonatomic,strong) NSNumber * borrower_count;
/*
+ (id) objectWithDictionary:(NSDictionary*)dictionary;
- (id) initWithDictionary:(NSDictionary*)dictionary;
*/
@end
