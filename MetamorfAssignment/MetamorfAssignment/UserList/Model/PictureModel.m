//
//  PictureModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "PictureModel.h"

//---------------------------------------------------------------------//


@implementation PictureModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _large = @"";
        _medium = @"";
        _thumbnail = @"";
    }
    return self;
}
@end
