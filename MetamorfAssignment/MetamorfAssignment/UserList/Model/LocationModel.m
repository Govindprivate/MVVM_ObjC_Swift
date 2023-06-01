//
//  LocationModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "LocationModel.h"
#import "StreetModel.h"
//---------------------------------------------------------------------//

@implementation LocationModel
- (instancetype)init {
    self = [super init];
    if (self) {
        _street = [[StreetModel alloc] init];
        _city = @"";
        _state = @"";
        _country = @"";
        _postcode = @"";
        _coordinates = @{};
        _timezone = @{};
    }
    return self;
}

@end
