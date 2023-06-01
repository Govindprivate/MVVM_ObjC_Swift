//
//  NameModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "NameModel.h"

//---------------------------------------------------------------------//


@implementation NameModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _title = @"";
        _first = @"";
        _last = @"";
    }
    return self;
}

@end
