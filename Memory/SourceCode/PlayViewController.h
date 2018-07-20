//
//  PlayViewController.h
//  Memory
//
//  Created by Nguyen Van Hung on 3/20/16.
//  Copyright © 2016 hungnv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblMaxMemory;
@property (weak, nonatomic) IBOutlet UILabel *lblTotalPoint;
@property (weak, nonatomic) IBOutlet UILabel *lblCurrentMemory;
@property (weak, nonatomic) IBOutlet UIButton *btnDone;
@property (weak, nonatomic) IBOutlet UILabel *lblScore;

- (IBAction)actDone:(id)sender;
- (IBAction)actClick:(id)sender;

@end
