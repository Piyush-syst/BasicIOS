//
//  ViewController.m
//  Basics
//
//  Created by macmini39 on 08/10/20.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSString *num;
@property (nonatomic,strong) NSString *arrayOfNumbers;
@property (nonatomic,strong) NSArray *arrayNumeric;
@property (nonatomic,strong) NSMutableString *resul;

@property (weak, nonatomic) IBOutlet UITextField *arrSort;
@property (weak, nonatomic) IBOutlet UITextField *evodd;
@property (weak, nonatomic) IBOutlet UITextField *arrSearch;
@property (weak, nonatomic) IBOutlet UITextField *searchEle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.num = @"dfds";
    self.arrayOfNumbers = @"sldk";
    NSLog(@"%@",self.num);
    // Do any additional setup after loading the view.
}
- (IBAction)condition:(id)sender
{
    self.num = [ self.evodd text];
   NSInteger number= [self.num integerValue];
    if(number%2==0)
    {
        self.num = @"Even Number";
        NSLog(@" Even Number");
    }
    else
    {
        self.num = @"Odd Number";
        
        NSLog(@"Odd Number");
    }
    
    SecondViewController *vc= [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    vc.result= self.num;
    [self.navigationController pushViewController:vc animated:YES ];
}
- (IBAction)sorting:(id)sender
{
    self.arrayOfNumbers= [self.arrSearch text];
    self.arrayNumeric= [self.arrayOfNumbers componentsSeparatedByString:@","];
    self.num = [ self.searchEle text];
    
    for(int i=0;i<sizeof(_arrayNumeric)-1;i++)
    {
        if(_arrayNumeric[i]==_num)
        {NSMutableString *n=[NSString stringWithFormat:@"%i", i+1];
            SecondViewController *vc= [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
            vc.result=n;
            [self.navigationController pushViewController:vc animated:YES ];
        }
    }
    
}

- (IBAction)searching:(id)sender
{
    self.arrayOfNumbers= [self.arrSort text];
    self.arrayNumeric= [self.arrayOfNumbers componentsSeparatedByString:@","];
    NSLog(@"%@",self.arrayNumeric);
    NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    self.arrayNumeric = [self.arrayNumeric sortedArrayUsingDescriptors:@[sd]];
    NSLog(@"%@",self.arrayNumeric);
    
    for (NSObject *obj in _arrayNumeric)
    [self.resul appendString:[obj description]];
    
    SecondViewController *vc= [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    vc.result= self.resul;
    [self.navigationController pushViewController:vc animated:YES ];
    
  
}



@end
