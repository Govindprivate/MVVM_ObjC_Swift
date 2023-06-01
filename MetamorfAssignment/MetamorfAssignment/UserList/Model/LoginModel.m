//
//  LoginModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "LoginModel.h"

//---------------------------------------------------------------------//

@implementation LoginModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _uuid = @"";
        _username = @"";
        _password = @"";
        _salt = @"";
        _md5 = @"";
        _sha1 = @"";
        _sha256 = @"";
    }
    return self;
}

@end
