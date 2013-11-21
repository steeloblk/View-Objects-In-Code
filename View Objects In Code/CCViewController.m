//
//  CCViewController.m
//  View Objects In Code
//
//  Created by Warren Deshazo on 11/20/13.
//  Copyright (c) 2013 Circboxx LLC. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()
@property (strong, nonatomic) UILabel *myLabel;
@property (strong, nonatomic) UITextField *myTextField;

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myLabel = [[UILabel alloc]init];
    self.myLabel.frame = CGRectMake (20, 60, 280, 22);
    [self.view addSubview:self.myLabel];
    self.myLabel.textColor = [UIColor blueColor];
    self.myLabel.text = @"placeholder";
    
    self.myTextField = [[UITextField alloc]init];
    self.myTextField.frame = CGRectMake(20, 110, 280, 30);
    self.myTextField.placeholder = @"Placeholder text";
    self.myTextField.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.myTextField];
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [myButton setTitle:@"press me damn it!" forState:UIControlStateNormal];
    
    [myButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:myButton];

}

-(void)didPressButton:(UIButton *)sender;
{
    self.myLabel.text = self.myTextField.text;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
