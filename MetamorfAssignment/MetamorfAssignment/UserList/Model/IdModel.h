//
//  IdModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IdModel : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *value;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


NS_ASSUME_NONNULL_END
