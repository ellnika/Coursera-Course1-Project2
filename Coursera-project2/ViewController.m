//
//  ViewController.m
//  Coursera-project2
//
//  Created by ewa on 19/05/2016.
//  Copyright © 2016 Ewa. All rights reserved.
//

#import "ViewController.h"

double convertKgToStones(double kg) {
    double stone;
    stone = 0.157473 * kg;
    return stone;
}

double convertKgToPounds (double kg)

{
    double pounds;
    pounds = 2.20462 * kg;
    return pounds;
}

double convertKgtoGrams (double kg)
{
    double gram;
    gram= 1000* kg;
    return gram;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender
{
    //create a place where we can store a new string that we can put to our label
    NSMutableString *buffer = [NSMutableString new];
    
    //take whatever text user typed in and convert into a variable called user input
    //doubleValue converts string into a double
    double userInput = [self.inputField.text doubleValue];
    
    //user has seleted unit two
    if (self.segmentController.selectedSegmentIndex == 0) {
        //write a function convert unit one to unit two and pass whatever user input is
        double unitTwoValue = convertKgToStones(userInput);
        [buffer appendString:[@(unitTwoValue) stringValue]];
}
    
    else if (self.segmentController.selectedSegmentIndex == 1) {
        double unitThreeValue = convertKgToPounds(userInput);
        [buffer appendString:[@(unitThreeValue) stringValue]];
    }
    
    else {
        double unitFourValue = convertKgtoGrams(userInput);
        [buffer appendString:[@(unitFourValue) stringValue]];
    }
       self.outputField.text = buffer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
