//
//  RedViewController.m
//  20151231-Unwind Segues
//
//  Created by apple2 on 15/12/31.
//  Copyright © 2015年 shiyuwudi. All rights reserved.
//

#import "RedViewController.h"
#import "BlueViewController.h"
#import "Unwind-Swift.h"

@interface RedViewController ()
@property (weak, nonatomic) IBOutlet UILabel *redLabel;

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}
-(void)setredlabelText:(NSString *)text{
    self.redLabel.text = text;
}
-(IBAction)unwindToRed:(UIStoryboardSegue *)unwindSegue{
    if ([unwindSegue.sourceViewController isKindOfClass:[BlueViewController class]]) {
        NSLog(@"unwind from blue!");
    }else if ([unwindSegue.sourceViewController isKindOfClass:[GreenViewController class]]){
        NSLog(@"unwind from green!");
    }
    
}


@end
