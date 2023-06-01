//
//  ListViewController.h
//  MetamorfAssignment
//
//  Created by Govind Kumar on 31/05/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *users;

@property (nonatomic, strong) IBOutlet UITableView *tableView;


@end

NS_ASSUME_NONNULL_END
