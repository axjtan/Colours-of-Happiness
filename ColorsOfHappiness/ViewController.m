//
//  ViewController.m
//  ColorsOfHappiness
//
//  Created by NP ECE BME Centre on 12/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property NSArray *colorsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *red    =   [UIColor redColor];
    UIColor *blue   =   [UIColor blueColor];
    UIColor *green  =   [UIColor greenColor];
    UIColor *yellow =   [UIColor yellowColor];
    UIColor *orange =   [UIColor orangeColor];
    UIColor *gray   =   [UIColor grayColor];
    
    self.colorsArray =  [NSArray arrayWithObjects: red, blue, green, yellow, orange, gray, nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colorsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    //cell.textLabel.text = [NSString stringWithFormat: @"%ld", indexPath.row];
    /*if(indexPath.row == 0) {
        cell.backgroundColor = [UIColor redColor];
    }
    else if (indexPath.row == 1) {
        cell.backgroundColor = [UIColor greenColor];
    }
    else if (indexPath.row == 2) {
        cell.backgroundColor = [UIColor yellowColor];
    }
    else if (indexPath.row == 3) {
        cell.backgroundColor = [UIColor blueColor];
    }
    else {
        cell.backgroundColor = [UIColor whiteColor];
    }*/

    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
