//
//  WebServiceManager.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#ifndef WebServiceManager_h
#define WebServiceManager_h
@interface WebServiceManager : NSObject
+ (void)getJsonResponse:(NSString *)urlStr success:(void (^)(NSMutableArray<NSDictionary *> *responseArray))success failure:(void(^)(NSError *error))failure;
#endif /* WebServiceManager_h */
@end
