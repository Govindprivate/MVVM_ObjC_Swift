//
//  UserListModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class PictureModel;
@class NameModel;
@class LocationModel;
@class LoginModel;
@class DobModel;
@class RegisteredModel;
@class IdModel;

@interface UserListModel : NSObject
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NameModel *name;
@property (nonatomic, strong) LocationModel *location;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) LoginModel *login;
@property (nonatomic, strong) DobModel *dob;
@property (nonatomic, strong) RegisteredModel *registered;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *cell;
@property (nonatomic, strong) IdModel *id;
@property (nonatomic, strong) PictureModel *picture;
@property (nonatomic, strong) NSString *nat;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
