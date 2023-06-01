//
//  UserTableViewCell.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 31/05/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageViewUser;
@property (weak, nonatomic) IBOutlet UILabel *labelUserName;
@property (weak, nonatomic) IBOutlet UILabel *labelUserEmail;
@property (weak, nonatomic) IBOutlet UILabel *labelUserCountry;
@property (weak, nonatomic) IBOutlet UILabel *labelUserTime;
- (void)setData:(NSDictionary *)data;
@end

NS_ASSUME_NONNULL_END
