//
//  ViewController.h
//  ruleta
//
//  Created by LLBER on 01/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    float angulo;
    BOOL girarYparar;
}

@property (nonatomic, strong) NSTimer *tiempo;

@property (atomic, strong) IBOutlet UIImageView *imagen;
@property (atomic, strong) IBOutlet UIButton *boton;

-(IBAction)girarRuleta:(id)sender;



@property (strong, nonatomic) IBOutlet UIImageView *imagenQuerer;
- (IBAction)querer:(id)sender;



@property (strong, nonatomic) IBOutlet UIImageView *imagencaraYcruz;
- (IBAction)moneda:(id)sender;


@property (strong, nonatomic) IBOutlet UIImageView *imagenColores;
- (IBAction)colores:(id)sender;







@end
