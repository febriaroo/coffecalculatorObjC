//
//  ViewController.m
//  Coffeecalculator
//
//  Created by Febria Roosita Dwi on 4/23/16.
//  Copyright © 2016 febriaroosita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *waterValue;
@property (weak, nonatomic) IBOutlet UITextField *ratioValue;
@property (weak, nonatomic) IBOutlet UITextField *coffeeValue;
- (IBAction)calculateAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateAction:(id)sender {
    NSLog(@"Calculate pressed!");
    float water = [[self.waterValue text] floatValue];
    float ratio = [[self.ratioValue text] floatValue];
    float coffee = water / ratio;
    NSString *coffeeText = [NSString stringWithFormat:@"%f", coffee];
    self.coffeeValue.text = coffeeText;
}
@end

