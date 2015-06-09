//
//  ResultViewController.h
//  TechrOn
//
//  Created by riku tanabe on 2015/06/08.
//  Copyright (c) 2015年 Lit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultViewController : UIViewController<UINavigationBarDelegate>{
    NSString *answerString;
    NSString *inputString;
    
    IBOutlet UILabel *answerNumLabel;
    IBOutlet UILabel *inputNumLabel;
}

@property(nonatomic)NSString *answerString;
@property(nonatomic)NSString *inputString;


-(IBAction)back;

@end
