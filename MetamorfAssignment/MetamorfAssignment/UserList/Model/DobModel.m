//
//  DobModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "DobModel.h"

//---------------------------------------------------------------------//

@implementation DobModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _date = @"";
        _age = 0;
    }
    return self;
}

@end
