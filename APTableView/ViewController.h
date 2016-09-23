//
//  ViewController.h
//  APTableView
//
//  Created by Mac on 13/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tableView;
    NSArray *personalApp;
    NSArray *natureApp;
    NSArray *socialApp;
    NSArray *developerApp;
    NSArray *personalImage;
    NSArray *natureImage;
    NSArray *socialImage;
    NSArray *developerImage;

}

@end

