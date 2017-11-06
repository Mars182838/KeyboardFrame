//
//  ViewController.m
//  KeyboardViewDemo
//
//  Created by 俊王 on 2017/11/1.
//  Copyright © 2017年 WJ. All rights reserved.
//

#import "ViewController.h"
#import "PGNumberKeyboard.h"

@interface ViewController ()<PGNumberKeyboardDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, weak) PGNumberKeyboard *keyboard;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PGNumberKeyboard *keyboard = [[PGNumberKeyboard alloc] initWithTextField:self.textField];
    keyboard.delegate = self;
    self.keyboard = keyboard;
    self.textField.inputView = self.keyboard;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
