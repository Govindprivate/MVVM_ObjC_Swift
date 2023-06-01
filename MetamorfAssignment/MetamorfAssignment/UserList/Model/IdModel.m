//
//  IdModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "IdModel.h"

//---------------------------------------------------------------------//

@implementation IdModel
- (instancetype)init {
    self = [super init];
    if (self) {
        _name = @"";
        _value = @"";
    }
    return self;
}
@end
