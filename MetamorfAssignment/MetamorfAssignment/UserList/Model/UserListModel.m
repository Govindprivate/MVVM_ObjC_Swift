//
//  UserListModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

#import "UserListModel.h"
#import "NameModel.h"
#import "LocationModel.h"
#import "LoginModel.h"
#import "DobModel.h"
#import "RegisteredModel.h"
#import "IdModel.h"
#import "PictureModel.h"
@implementation UserListModel

//- (instancetype)init {
//    self = [super init];
//    if (self) {
//        _gender = @"";
//        _name = [[NameModel alloc] init];
//        _location = [[LocationModel alloc] init];
//        _email = @"";
//        _login = [[LoginModel alloc] init];
//        _dob = [[DobModel alloc] init];
//        _registered = [[RegisteredModel alloc] init];
//        _phone = @"";
//        _cell = @"";
//        _id = [[IdModel alloc] init];
//        _picture = [[PictureModel alloc] init];
//        _nat = @"";
//    }
//    return self;
//}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _gender = dictionary[@"gender"];
        _email = dictionary[@"email"];
        _phone = dictionary[@"phone"];
        _cell = dictionary[@"cell"];
        _nat = dictionary[@"nat"];
        
        NSDictionary *nameDictionary = dictionary[@"name"];
        _name = [[NameModel alloc] initWithDictionary:nameDictionary];
        
        NSDictionary *locationDictionary = dictionary[@"location"];
        _location = [[LocationModel alloc] initWithDictionary:locationDictionary];
        
        NSDictionary *loginDictionary = dictionary[@"login"];
        _login = [[LoginModel alloc] initWithDictionary:loginDictionary];
        
        NSDictionary *dobDictionary = dictionary[@"dob"];
        _dob = [[DobModel alloc] initWithDictionary:dobDictionary];
        
        NSDictionary *registeredDictionary = dictionary[@"registered"];
        _registered = [[RegisteredModel alloc] initWithDictionary:registeredDictionary];
        
        NSDictionary *idDictionary = dictionary[@"id"];
        _id = [[IdModel alloc] initWithDictionary:idDictionary];
        
        NSDictionary *pictureDictionary = dictionary[@"picture"];
        _picture = [[PictureModel alloc] initWithDictionary:pictureDictionary];
    }
    return self;
    
}
@end
