//
//  UserListViewModel.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>
#import "WebServiceManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserListViewModel : NSObject
+ (void)getUserList:(NSString *)urlStr success:(void (^)(NSMutableArray<NSDictionary *> *responseArray))success failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
