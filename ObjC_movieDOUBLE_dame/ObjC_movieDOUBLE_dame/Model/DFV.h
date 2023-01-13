//
//  DFV.h
//  ObjC_movieDOUBLE_dame
//
//  Created by Consultant on 1/13/23.
//
#import "ViewController.h"

@interface DFV : ViewController


@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSString *release_date;
@property (nonatomic, assign) NSSwappedFloat *popularity;

@property (nonatomic, strong) NSString *overview;
@property (nonatomic, strong) NSString *poster_path;





//assigned label buttons

@property (nonatomic, copy) IBOutlet UILabel* filmTitle;

@property (nonatomic, strong) IBOutlet UILabel* filmRelease_date;
@property (nonatomic, assign) IBOutlet UILabel* filmPopularity;

@property (nonatomic, strong) IBOutlet UILabel* filmOverview;
@property (nonatomic, strong) IBOutlet UILabel* filmPoster_path;




@end
