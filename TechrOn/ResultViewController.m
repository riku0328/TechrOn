//
//  ResultViewController.m
//  TechrOn
//
//  Created by riku tanabe on 2015/06/08.
//  Copyright (c) 2015年 Lit. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

@synthesize answerString;
@synthesize inputString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    answerNumLabel.text=answerString;
    inputNumLabel.text=inputString;
    
    if ([answerNumLabel .text isEqualToString:inputNumLabel.text]) {
        inputNumLabel.textColor=[UIColor blackColor];
    }else{
        inputNumLabel.textColor=[UIColor redColor];
    }
}

-(IBAction)back:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
