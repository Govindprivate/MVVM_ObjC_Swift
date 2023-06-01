//
//  LocationModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class StreetModel;
@interface LocationModel : NSObject
@property (nonatomic, strong) StreetModel *street;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *postcode;
@property (nonatomic, strong) NSDictionary *coordinates;
@property (nonatomic, strong) NSDictionary *timezone;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


NS_ASSUME_NONNULL_END
