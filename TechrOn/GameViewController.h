//
//  GameViewController.h
//  TechrOn
//
//  Created by riku tanabe on 2015/06/08.
//  Copyright (c) 2015年 Lit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultViewController.h"

@interface GameViewController : UIViewController<UITextFieldDelegate>{
    NSString *answerString;
    NSString *inputString;
    
    IBOutlet UILabel *numberLabel;
    IBOutlet UITextField *numberField;
}

-(IBAction)next;
-(IBAction)backToTop;

@property(nonatomic)NSString *answerString;
@property(nonatomic)NSString *inputString;

@end
