//
//  ViewController.m
//  CalculadoraTP3
//
//  Created by Oteniel on 5/26/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)btPonto:(UIButton *)sender{
    
    if ([self.lbDisplay.text containsString:@"."]){
    }

    else{
         self.lbDisplay.text = [self.lbDisplay.text stringByAppendingString:@"."];
    }
}
/*---------------------------------------------------- */
- (IBAction)btNumber:(UIButton *)sender{
   
    NSLog(@" Botão %@", sender.titleLabel.text);
    
    if ([self.lbDisplay.text  isEqual: @"0"]){
        self.lbDisplay.text = sender.titleLabel.text;
    }
    else if
        ([total isEqualToString:@"="]){
            NSLog(@"Operação já realizada!");
        }
    else{
       NSString * num = sender.titleLabel.text;
       NSString * newNumber = [NSString stringWithFormat:@"%@%@", self.lbDisplay.text, num];
       self.lbDisplay.text = newNumber;
       
    }
}
/*---------------------------------------------------- */
- (IBAction)btOperadores:(UIButton *)sender {
    
        Operador = sender.titleLabel.text;
        pNumber = self.lbDisplay.text.floatValue;
        self.lbDisplay.text = @"0";
    
}
/*---------------------------------------------------- */
- (IBAction)btPorcent:(UIButton *)sender {
    
     porcent = (self.lbDisplay.text.floatValue * pNumber) / 100;
     self.lbDisplay.text = [NSString stringWithFormat:@"%.2f" , porcent];

}
/*---------------------------------------------------- */
- (IBAction)btTotal:(UIButton *)sender{
    
    if (porcent != 0 ){
        
        if ([Operador isEqual:@"+"]){
            nNumber = pNumber + porcent;
    }
        
        if ([Operador isEqual:@"-"]){
            nNumber = pNumber - porcent;
    }
    
        if ([Operador isEqual:@"x"]){
            nNumber = pNumber * porcent;
    }
        if ([Operador isEqual:@"/"]){
            nNumber = pNumber / porcent;
    }
    
    }
    
    else {
        if ([Operador isEqual:@"+"]){
            nNumber = pNumber + self.lbDisplay.text.floatValue;
        }
        
        if ([Operador isEqual:@"-"]){
            nNumber = pNumber - self.lbDisplay.text.floatValue;
        }
        
        if ([Operador isEqual:@"x"]){
            nNumber = pNumber * self.lbDisplay.text.floatValue;
        }
        if ([Operador isEqual:@"/"]){
            nNumber = pNumber / self.lbDisplay.text.floatValue;
        }
        
    }
  self.lbDisplay.text = [NSString stringWithFormat:@"%.2F", nNumber];
   total = sender.titleLabel.text.self;
}

- (IBAction)btClear:(UIButton *)sender {
    porcent = 0;
    total = @"";
    nNumber = 0;
    Operador = @"";
    self.lbDisplay.text = @"0";
}

@end
