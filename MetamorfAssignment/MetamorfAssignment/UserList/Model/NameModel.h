//
//  NameModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NameModel : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *first;
@property (nonatomic, strong) NSString *last;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
NS_ASSUME_NONNULL_END

