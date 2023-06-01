//
//  UserTableViewCell.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 31/05/23.
//

#import "UserTableViewCell.h"

@implementation UserTableViewCell
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setData:(NSDictionary *)data{
//    dispatch_async(dispatch_get_global_queue(0,0), ^{

    NSData * imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: data[@"picture"][@"medium"]]];
    _imageViewUser.image = [UIImage imageWithData: imageData];
    NSString *firstName = ((void)(@"%@"), data[@"name"][@"first"]);
    NSString *lastName = ((void)(@"%@"), data[@"name"][@"last"]);
    
    _labelUserName.text = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
    _labelUserEmail.text = [NSString stringWithFormat:@"%@",  data[@"email"]];
    
    _labelUserCountry.text = [NSString stringWithFormat:@"Country | %@", data[@"location"][@"country"]];
    NSString *dateString = [NSString stringWithFormat:@"%@",  data[@"registered"][@"date"]];
    
    // create dateFormatter with UTC time format
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
//    "2014-07-31T19:34:47.744Z"

    NSDate *date = [dateFormatter dateFromString:dateString]; // create date from string

    // change to a readable time format and change to local time zone
    [dateFormatter setDateFormat:@"MMM d, yyyy"];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    NSString *timestamp = [dateFormatter stringFromDate:date];
    _labelUserTime.text = timestamp;

}
@end
