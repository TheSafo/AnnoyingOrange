//
//  ViewController.m
//  AnnoyingOrange
//
//  Created by Jake Saferstein on 10/30/15.
//  Copyright © 2015 Jake Saferstein. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIButton* btnFruit;
@property (nonatomic) UIButton* btnKnife;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:.99 green:.4 blue:0 alpha:1];
    
    UILabel* lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 320, 40)];
    lbl.text = @"THE ANNOYING ORANGE";
    lbl.textAlignment = NSTextAlignmentCenter;
    
    _btnFruit = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btnFruit.frame = CGRectMake(30, 100, 110, 100);
    _btnFruit.backgroundColor = [UIColor orangeColor];
    _btnFruit.layer.borderColor = [UIColor blackColor].CGColor;
    _btnFruit.layer.cornerRadius = 20;
    _btnFruit.layer.borderWidth = 2;
    
    
    _btnKnife = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btnKnife.frame = CGRectMake(320-140, 100, 110, 100);
    _btnKnife.backgroundColor = [UIColor orangeColor];
    _btnKnife.layer.borderColor = [UIColor blackColor].CGColor;
    _btnKnife.layer.cornerRadius = 20;
    _btnKnife.layer.borderWidth = 2;
    
    [self.view addSubview:lbl];
    [self.view addSubview:_btnFruit];
    [self.view addSubview:_btnKnife];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
