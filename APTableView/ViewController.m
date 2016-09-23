//
//  ViewController.m
//  APTableView
//
//  Created by Mac on 13/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat heightOfScreen = [[UIScreen mainScreen]bounds].size.height;
    
    CGFloat widthOfScreen = [[UIScreen mainScreen]bounds].size.width;

    
    
    
     personalApp= [[NSArray alloc]initWithObjects:@"General",@"Privacy", nil];
   
    natureApp =[[NSArray alloc]initWithObjects:@"iCloud",@"Maps",@"News",@"Safari",@"Photos & Camera",@"Game Center", nil];
    
    socialApp = [[NSArray alloc]initWithObjects:@"Twitter",@"Facebook",@"Flicker",@"Vimeo", nil];
    
    developerApp = [[NSArray alloc]initWithObjects:@"Developer", nil];
    
    
   //
    personalImage = [NSArray arrayWithObjects:@"settinglogo",@"privacy", nil];
    
    natureImage = [NSArray arrayWithObjects:@"icould",@"map",@"news",@"safari",@"photos & cam",@"game", nil];

    
    socialImage = [NSArray arrayWithObjects:@"twitter",@"facebook",@"flicker",@"vimeo", nil];

    
    developerImage = [NSArray arrayWithObjects:@"developer", nil];

    
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 30, widthOfScreen, heightOfScreen-20) style:UITableViewStyleGrouped];
    
    tableView.delegate =self;
    
    tableView.dataSource =self;
    
    tableView.backgroundColor = [UIColor colorWithRed:0.2 green:(0.5) blue:(0.5) alpha:1];
    
    [self.view addSubview:tableView];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if(section==0) {
         return personalApp.count;
    }
    else if(section==1){
        
        return natureApp.count;
        
    }
    else if(section==2){
        
        return socialApp.count;
        
    }
    else if(section==3){
        
        return developerApp.count;
        
    }
    else{
        return 0;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Apps"];
    
    NSString *personalString;
    NSString *natureString;
    NSString *socialString;
    NSString *developerString;
    
    
    NSString *personalImageString;
    NSString *natureImageString;
    NSString *socialImageString;
    NSString *developerImageString;
    
    
    if(indexPath.section == 0){
        
        personalString =[personalApp objectAtIndex:indexPath.row];
        
        cell.textLabel.text =personalString;
        

        personalImageString =[personalImage objectAtIndex:indexPath.row];
        
        cell.imageView.image = [UIImage imageNamed:personalImageString];
        cell.textLabel.textColor = [UIColor whiteColor];
        
        cell.backgroundColor = [UIColor blackColor];
        
        cell.textLabel.font = [UIFont boldSystemFontOfSize:20];
    }
    else if(indexPath.section == 1){
        natureString =[natureApp objectAtIndex:indexPath.row];
        
        cell.textLabel.text =natureString;
        
        natureImageString =[natureImage objectAtIndex:indexPath.row];
        
        cell.imageView.image = [UIImage imageNamed:natureImageString];
        
        cell.textLabel.textColor = [UIColor whiteColor];
        
        cell.backgroundColor = [UIColor blackColor];
        
        cell.textLabel.font = [UIFont boldSystemFontOfSize:20];



        }
    else if(indexPath.section == 2){
        socialString =[socialApp objectAtIndex:indexPath.row];
        
        cell.textLabel.text =socialString;
        
                socialImageString =[socialImage objectAtIndex:indexPath.row];
        
        cell.imageView.image = [UIImage imageNamed:socialImageString];
        cell.backgroundColor = [UIColor blackColor];
        
        cell.textLabel.textColor = [UIColor whiteColor];
        
        cell.textLabel.font = [UIFont boldSystemFontOfSize:20];
        

    }
    else if(indexPath.section == 3){
        developerString =[developerApp objectAtIndex:indexPath.row];
        
        cell.textLabel.text = developerString;
        
        
        developerImageString =[developerImage objectAtIndex:indexPath.row];
        
        cell.imageView.image = [UIImage imageNamed:developerImageString];
        cell.backgroundColor = [UIColor blackColor];
        
        cell.textLabel.font = [UIFont boldSystemFontOfSize:20];
        
        cell.textLabel.textColor = [UIColor whiteColor];

    }
    
    return cell;
}
@end
