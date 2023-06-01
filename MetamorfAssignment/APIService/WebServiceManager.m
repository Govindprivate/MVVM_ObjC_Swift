//
//  WebServiceManager.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

#import <Foundation/Foundation.h>
@interface WebServiceManager : NSObject

@end
@implementation WebServiceManager : NSObject

+ (void)getJsonResponse:(NSString *)urlStr success:(void (^)(NSMutableArray<NSDictionary *> *responseArray))success failure:(void(^)(NSError *error))failure {
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    // Asynchronously API is hit here
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            failure(error);
        } else {
            NSError *jsonError = nil;
            NSMutableArray<NSDictionary *> *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];
            
            if (jsonError) {
                failure(jsonError);
            } else {
                success(json);
            }
        }
    }];
    
    [dataTask resume]; // Executed First
}

@end
