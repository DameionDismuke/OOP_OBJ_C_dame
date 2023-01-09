//
//  MyVehicle.m
//  LetsTryObjectC_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//

#import "MyVehicle.h"

@implementation MyVehicle

-(void)MyCar : (NSString *)carName {
    myBlock();
}

void (^myBlock)(void) = ^{
    NSLog(@"this is block");
};

@end



