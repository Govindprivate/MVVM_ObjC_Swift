//
//  UserListViewModel.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import "UserListViewModel.h"

@implementation UserListViewModel
+ (void)getUserList:(NSString *)urlStr success:(void (^)(NSMutableArray<NSDictionary *> *responseArray))success failure:(void(^)(NSError *error))failure{
    [WebServiceManager getJsonResponse:urlStr success:^(NSMutableArray *responseArray) {
        success(responseArray);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
