//
//  main.m
//  LetsTryObjectC_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//
/// HW: Write down a few lines about Objective-C properties attributes like what are these and when to use.
///
/// Objective-C property attributes are ...
///
///
///
///

#import <Foundation/Foundation.h>
#import "MyVehicle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    MyVehicle *vehicle = [[MyVehicle alloc] init];
    [vehicle MyCar:@"370z"];
    
    
    return 0;
}
