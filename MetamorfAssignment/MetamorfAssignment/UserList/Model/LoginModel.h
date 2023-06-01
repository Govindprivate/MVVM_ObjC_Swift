//
//  LoginModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginModel : NSObject
@property (nonatomic, strong) NSString *uuid;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *salt;
@property (nonatomic, strong) NSString *md5;
@property (nonatomic, strong) NSString *sha1;
@property (nonatomic, strong) NSString *sha256;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end



NS_ASSUME_NONNULL_END
