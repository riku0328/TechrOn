//
//  GameViewController.m
//  TechrOn
//
//  Created by riku tanabe on 2015/06/08.
//  Copyright (c) 2015年 Lit. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

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
    
    numberLabel.hidden=NO;
    numberField.delegate=self;
    
    int number=arc4random()%8999999;
    numberLabel.text=[NSString stringWithFormat:@"%d",number+1000000];
    [self performSelector:@selector(hideLabel) withObject:nil afterDelay:0.2];
}

-(void)hideLabel{
    numberLabel.hidden=YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [numberField resignFirstResponder];
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"mySegue"]) {
        ResultViewController  *resultVC=segue.destinationViewController;
        resultVC.answerString=numberLabel.text;
        resultVC.inputString=numberField.text;
    }
}

-(IBAction)next:(id)sender{
    [self performSegueWithIdentifier:@"mySegue" sender:self];
}

-(IBAction)backToTop:(id)sender{
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
