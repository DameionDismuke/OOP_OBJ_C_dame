//
//  ViewController.h
//  ObjC_movieDOUBLE_dame
//
//  Created by Consultant on 1/11/23.
//

#import <UIKit/UIKit.h>
#import "homePage.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) IBOutlet UITableView *TView;
@property (nonatomic, strong) NSMutableArray* results;

@end

