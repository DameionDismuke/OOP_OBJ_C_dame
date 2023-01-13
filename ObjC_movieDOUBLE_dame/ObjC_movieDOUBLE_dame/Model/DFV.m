//
//  DFV.m
//  ObjC_movieDOUBLE_dame
//
//  Created by Consultant on 1/13/23.
//

#import <Foundation/Foundation.h>

#import "DFV.h"

@interface DFV ()





@end


@implementation DFV

-(void)viewDidLoad {
    
    self.filmTitle.text = self.title;
    
    self.filmPopularity.tag = self.popularity;
    self.filmRelease_date.text = self.release_date;
    
    self.filmOverview.text = self.overview;
    self.filmPoster_path.text = self.poster_path;
    
    
}

@end
