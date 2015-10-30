//
//  ViewController.m
//  AnnoyingOrange
//
//  Created by Jake Saferstein on 10/30/15.
//  Copyright © 2015 Jake Saferstein. All rights reserved.
//

#import "ViewController.h"
@import AVFoundation;

@interface ViewController ()

@property (nonatomic) UIButton* btnFruit;
@property (nonatomic) UIButton* btnKnife;
@property (nonatomic) UIButton* btnOrange;
@property (nonatomic) UIButton* btnFunny;
@property (nonatomic) UIButton* btnRlyFunny;

@property (nonatomic) AVAudioPlayer* plyrFruit;
@property (nonatomic) AVAudioPlayer* plyrKnife;
@property (nonatomic) AVAudioPlayer* plyrOrange;
@property (nonatomic) AVAudioPlayer* plyrFunny;
@property (nonatomic) AVAudioPlayer* plyrRlyFunny;

@property (nonatomic) int indFruit;
@property (nonatomic) int indKnife;

@end

@implementation ViewController

-(void) fruitPressed
{
    NSLog(@"Fruit pressed");
    
    [_plyrFruit play];
    _indFruit++;
    
    if(_indFruit % 3 == 0) {
        
        NSString* fileName = @"AO_HeyApple";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrFruit = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    else if(_indFruit % 3 == 1) {
        
        NSString* fileName = @"AO_HeyPear";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrFruit = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    else {
        
        NSString* fileName = @"AO_HeyPlumpkin";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrFruit = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
}

-(void) knifePressed
{
    NSLog(@"Knife pressed");

    [_plyrKnife play];
    _indKnife++;
    
    if (_indKnife % 2 == 0) {
        
        NSString* fileName = @"AO_Rand1";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrKnife = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    else {
        
        NSString* fileName = @"AO_Rand2";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrKnife = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
}

-(void) orangePressed
{
    NSLog(@"Orange pressed");

    [_plyrOrange play];
}

-(void) funnyPressed
{
    NSLog(@"Funny pressed");
    
    [_plyrFunny play];
}

-(void) rlyFunnyPressed
{
    NSLog(@"Rly Funny pressed");

    [_plyrRlyFunny play];
}

-(void) createAudioStuff
{
    {
        NSString* fileName = @"AO_ImAnOrange";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrOrange = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    {
        NSString* fileName = @"AO_ShortLaugh";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrFunny = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    {
        NSString* fileName = @"AO_LongLaugh";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrRlyFunny = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    {
        NSString* fileName = @"AO_HeyApple";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrFruit = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
    {
        NSString* fileName = @"AO_Rand1";
        NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
        NSURL* fileURL = [NSURL fileURLWithPath:filePath];
        _plyrKnife = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createAudioStuff];
    
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
    [_btnOrange setTitle:@"I'm an orange!" forState:UIControlStateNormal];
    [_btnOrange setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnOrange addTarget:self action:@selector(orangePressed) forControlEvents:UIControlEventTouchUpInside];
    
    _btnOrange.frame = CGRectMake(320/2 - 55, 225, 110, 100);
    _btnOrange.backgroundColor = [UIColor orangeColor];
    _btnOrange.layer.borderColor = [UIColor blackColor].CGColor;
    _btnOrange.layer.cornerRadius = 20;
    _btnOrange.layer.borderWidth = 2;
    
    _btnFunny = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnFunny setTitle:@"That's Funny!" forState:UIControlStateNormal];
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
    [_btnRlyFunny addTarget:self action:@selector(rlyFunnyPressed) forControlEvents:UIControlEventTouchUpInside];
    
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
