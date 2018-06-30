//
//  MovieCell.h
//  flix_demo_03
//
//  Created by Ezra Bekele on 6/27/18.
//  Copyright © 2018 flix_demo_03. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *posterLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end
