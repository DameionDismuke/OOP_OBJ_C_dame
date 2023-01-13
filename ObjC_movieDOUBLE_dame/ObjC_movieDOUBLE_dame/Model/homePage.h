//
//  homePage.h
//  ObjC_movieDOUBLE_dame
//
//  Created by Consultant on 1/11/23.
//


#import <Foundation/Foundation.h>





@interface homePage : NSObject






@property (nonatomic, assign) NSInteger identifier;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* release_date;
@property (nonatomic, copy) NSString* overview;
@property (nonatomic, copy) NSString* poster_path;
@property (nonatomic, assign) NSSwappedFloat popularity;


// - (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end






