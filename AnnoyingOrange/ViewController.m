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
@property (nonatomic) UIButton* btnOrange;
@property (nonatomic) UIButton* btnFunny;
@property (nonatomic) UIButton* btnRlyFunny;

@end

@implementation ViewController

-(void) fruitPressed
{
    
}

-(void) knifePressed
{
    
}

-(void) orangePressed
{
    
}

-(void) funnyPressed
{
    
}

-(void) rlyFunnyPressed
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:.99 green:.4 blue:0 alpha:1];
    
    UILabel* lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 320, 40)];
    lbl.text = @"THE ANNOYING ORANGE!!!";
    lbl.textColor = [UIColor whiteColor];
    lbl.textAlignment = NSTextAlignmentCenter;
    
    _btnFruit = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnFruit setTitle:@"Hey Fruit!" forState:UIControlStateNormal];
    [_btnFruit setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnFruit addTarget:self action:@selector(fruitPressed) forControlEvents:UIControlEventTouchUpInside];
    
    _btnFruit.frame = CGRectMake(30, 100, 110, 100);
    _btnFruit.backgroundColor = [UIColor orangeColor];
    _btnFruit.layer.borderColor = [UIColor blackColor].CGColor;
    _btnFruit.layer.cornerRadius = 20;
    _btnFruit.layer.borderWidth = 2;
    
    
    _btnKnife = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnKnife setTitle:@"Knife!" forState:UIControlStateNormal];
    [_btnKnife setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnKnife addTarget:self action:@selector(knifePressed) forControlEvents:UIControlEventTouchUpInside];
    
    _btnKnife.frame = CGRectMake(320-140, 100, 110, 100);
    _btnKnife.backgroundColor = [UIColor orangeColor];
    _btnKnife.layer.borderColor = [UIColor blackColor].CGColor;
    _btnKnife.layer.cornerRadius = 20;
    _btnKnife.layer.borderWidth = 2;
    
    _btnOrange = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnOrange setTitle:@"That's Funny!" forState:UIControlStateNormal];
    [_btnOrange setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnOrange addTarget:self action:@selector(orangePressed) forControlEvents:UIControlEventTouchUpInside];
    
    _btnOrange.frame = CGRectMake(320/2 - 55, 225, 110, 100);
    _btnOrange.backgroundColor = [UIColor orangeColor];
    _btnOrange.layer.borderColor = [UIColor blackColor].CGColor;
    _btnOrange.layer.cornerRadius = 20;
    _btnOrange.layer.borderWidth = 2;
    
    _btnFunny = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnFunny setTitle:@"I'm an Orange!" forState:UIControlStateNormal];
    [_btnFunny setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnFunny addTarget:self action:@selector(funnyPressed) forControlEvents:UIControlEventTouchUpInside];

    
    _btnFunny.frame = CGRectMake(30, 350, 110, 100);
    _btnFunny.backgroundColor = [UIColor orangeColor];
    _btnFunny.layer.borderColor = [UIColor blackColor].CGColor;
    _btnFunny.layer.cornerRadius = 20;
    _btnFunny.layer.borderWidth = 2;
    
    _btnRlyFunny = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnRlyFunny setTitle:@"That's Really Funny!" forState:UIControlStateNormal];
    [_btnRlyFunny setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _btnRlyFunny.titleLabel.numberOfLines = 2;
    _btnRlyFunny.titleLabel.textAlignment = NSTextAlignmentCenter;
    [_btnFruit addTarget:self action:@selector(rlyFunnyPressed) forControlEvents:UIControlEventTouchUpInside];
    
    _btnRlyFunny.frame = CGRectMake(320-140, 350, 110, 100);
    _btnRlyFunny.backgroundColor = [UIColor orangeColor];
    _btnRlyFunny.layer.borderColor = [UIColor blackColor].CGColor;
    _btnRlyFunny.layer.cornerRadius = 20;
    _btnRlyFunny.layer.borderWidth = 2;
    
    [self.view addSubview:lbl];
    [self.view addSubview:_btnFruit];
    [self.view addSubview:_btnKnife];
    [self.view addSubview:_btnOrange];
    [self.view addSubview:_btnFunny];
    [self.view addSubview:_btnRlyFunny];
}

@end
