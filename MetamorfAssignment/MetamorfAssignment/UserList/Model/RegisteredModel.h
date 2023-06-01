//
//  RegisteredModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface RegisteredModel : NSObject
@property (nonatomic, strong) NSString *date;
@property (nonatomic, assign) NSInteger age;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


NS_ASSUME_NONNULL_END
