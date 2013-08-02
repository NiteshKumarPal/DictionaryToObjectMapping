//
//  ViewController.h
//  ObjectMapping
//
//  Created by Webonise on 02/08/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIHelper.h"
@interface ViewController : UIViewController<APIHelperDelegate>
@property (retain,nonatomic) IBOutlet UIButton *btnApiCall;
@property (retain,nonatomic) IBOutlet UIButton *btnSeeResult;
@property (retain,nonatomic) NSDictionary *dictionary;
@property (retain,nonatomic) APIHelper *apiHelper;
-(IBAction)apiCall:(id)sender;
-(IBAction)seeResult:(id)sender;
@end
