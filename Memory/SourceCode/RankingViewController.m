//
//  RankingViewController.m
//  Memory
//
//  Created by Nguyen Van Hung on 3/20/16.
//  Copyright © 2016 hungnv. All rights reserved.
//

#import "RankingViewController.h"
#import "ScoreObject.h"
#import "ScoreCell.h"

@interface RankingViewController ()
{
    NSMutableArray *arrScore;
}

@end

@implementation RankingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrScore = [ScoreObject getScoreFromFile:SCORE_FILE_NAME];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrScore.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *scoreCellDefinition = @"ScoreCellID";
    ScoreCell *cell = [tableView dequeueReusableCellWithIdentifier:scoreCellDefinition];
    cell.lblNo.text = [NSString stringWithFormat:@"%ld", indexPath.row + 1];
    cell.lblNumberScore.text = [NSString stringWithFormat:@"%d", [[arrScore objectAtIndex:indexPath.row] intValue]];
    return cell;
}

- (IBAction)actBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)actRateThisApp:(id)sender {
    NSString *urlString = URL_ITUNES_APPLE;
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}
@end
