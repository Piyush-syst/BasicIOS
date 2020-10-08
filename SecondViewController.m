//
//  SecondViewController.m
//  Basics
//
//  Created by macmini39 on 08/10/20.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLable;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.resultLable setText:self.result];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
