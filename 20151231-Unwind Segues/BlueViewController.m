//
//  BlueViewController.m
//  20151231-Unwind Segues
//
//  Created by apple2 on 15/12/31.
//  Copyright © 2015年 shiyuwudi. All rights reserved.
//

#import "BlueViewController.h"
#import "RedViewController.h"
#import "Unwind-Swift.h"

@interface BlueViewController ()

@property (weak, nonatomic) IBOutlet UITextField *blueTextfield;

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)popToGreen:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.destinationViewController isKindOfClass:[RedViewController class]]) {
        RedViewController *redVC = segue.destinationViewController;
        [redVC setredlabelText:self.blueTextfield.text];
    }else if ([segue.destinationViewController isKindOfClass:[GreenViewController class]]){
        GreenViewController *greenVC = segue.destinationViewController;
        greenVC.greenLabel.text = @"unwind from blueVC!";
    }
}

@end
