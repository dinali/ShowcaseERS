//
//  MyMitigationViewController.h
//  ShowcaseERS
//
//  Created by Dina Li on 2/12/13.
//  Copyright (c) 2013 USDA ERS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomHeaderView.h"
#import "MyCollectionViewCell.h"

@interface MyMitigationCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

{
    NSMutableArray *myImages;
    NSMutableArray *myDescriptions;
}

@property (strong, nonatomic) NSMutableArray *myImages;
@property (strong, nonatomic) NSMutableArray *myDescriptions;


@end
