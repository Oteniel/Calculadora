//
//  ViewController.h
//  CalculadoraTP3
//
//  Created by Oteniel on 5/26/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float pNumber, nNumber, porcent;
    NSString * Operador;
    NSString * total;
}
   
@property (weak, nonatomic) IBOutlet UILabel *lbDisplay;

- (IBAction)btNumber:(UIButton *)sender; /* buttons ( de 0 a 9 ) */

- (IBAction)btOperadores:(UIButton *)sender; /* buttons ( +, -, x, / )  */

- (IBAction)btClear:(UIButton *)sender; /* Limpa Display */

- (IBAction)btTotal:(UIButton *)sender; /* ( = ) */

- (IBAction)btPonto:(UIButton *)sender;

- (IBAction)btPorcent:(UIButton *)sender;

@end

