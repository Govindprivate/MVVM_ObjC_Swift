//
//  ListViewController.m
//  MetamorfAssignment
//
//  Created by Govind Kumar on 31/05/23.
//

#import "ListViewController.h"
#import "MetamorfAssignment-Swift.h"
#import "UserTableViewCell.h"
#import "UserListModel.h"
#import "UserListViewModel.h"

@class ResultsModel;
@class DetailsViewController;
@interface ListViewController ()<UITableViewDelegate, UITableViewDataSource>
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getUserData];
}

#pragma mark - API calling..
-(void)getUserData{
    [UserListViewModel getUserList:@"https://randomuser.me/api/?page=1&results=100" success:^(NSMutableArray *responseArray) {
        dispatch_async(dispatch_get_main_queue(), ^{
            UserListModel *userListModel = [[UserListModel alloc] init];
            self.users = [responseArray valueForKey:@"results"];
            [self.tableView reloadData];
        });
    } failure:^(NSError *error) {
        // error handling here ...
        dispatch_async(dispatch_get_main_queue(), ^{
            [self showAlert:[error localizedDescription] title:@"Error"];
        });
    }];
}

#pragma mark - Show Alert..
-(void) showAlert:(NSString *)message title:(NSString *)title{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:title
                                 message:message
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okButton = [UIAlertAction
                               actionWithTitle:@"Ok"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
        //Handle your yes please button action here
    }];
    [alert addAction:okButton];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - UITableView Method's ...
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1; //count of section
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.users count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * myIdentifier = @"UserTableViewCell";
    UserTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: myIdentifier];
    [cell setData:self.users[indexPath.row]];
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailsViewController *obj = [[DetailsViewController alloc] init];
    obj.data = self.users[indexPath.row];
    [self.navigationController pushViewController:obj animated:YES];

}
@end
