//
//  ViewController.m
//  ObjC_movieDOUBLE_dame
//
//  Created by Dameion Dismuke on 1/11/23.
//

#import "ViewController.h"
#import "homePage.h"

@interface ViewController ()





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setUp];
    [self fetchFilmUsingJSON];
    
    self.navigationItem.title = @"Popular Movies";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellId];
    
    
    
    
}

-(void) setUp{
    
    self.films = NSMutableArray.new;
    
    homePage *film = homePage.new;
    film.title = @"Popular Films/Movies";
    
    [self.films addObject:film];
    
    
}

- (void) fetchFilmUsingJSON {
    
    NSLog(@"FETCHING FILMS");
    NSString *urlString = @"https://api.themoviedb.org/3/movie/popular?api_key=653c931d946bb2a9870f4ed725ecd322";
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            NSLog(@"FINISHED FETCHING FILMS");
            
        //NSString *fakeString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        //NSLog(@"Dummy string: %@", fakeString);
        
        NSError *err;
        NSArray *filmJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        if (err){
            NSLog(@"FAILED TO SERIALIZE :@", err);
            return;
        }
        
        
        NSMutableArray<homePage *> *films = NSMutableArray.new;
        for(NSDictionary *filmDic in filmJSON) {
            NSString *title = filmDic[@"title"];
            homePage *film = homePage.new;
            film.title = title;
            [films addObject:film];
            
        }
        
        
        self.films = films;
        
        [self.tableView reloadData];
        
        }] resume];
    
    
    
    
}


-(void) requestNextNetworkPage {
    
    NSInteger pageN = 1;
    if (self.currentPage) {
        pageN = self.currentPage.page * 1;
    }
    
    [[NetworkManager sharedInstance] fetchMoviesWithPageNumber: pageN completion: ^(PageResult * _Nullable pageResult) {
        self.currentPage = pageResult;
        [self.films addObjectsFromArray:pageResult.films];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
    
}





- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.films.count;
}


@end
