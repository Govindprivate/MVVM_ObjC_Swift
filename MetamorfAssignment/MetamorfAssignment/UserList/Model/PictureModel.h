//
//  PictureModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface PictureModel : NSObject
@property (nonatomic, strong) NSString *large;
@property (nonatomic, strong) NSString *medium;
@property (nonatomic, strong) NSString *thumbnail;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


NS_ASSUME_NONNULL_END
