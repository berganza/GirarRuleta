//
//  ViewController.m
//  ruleta
//
//  Created by LLBER on 01/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize boton, imagen, tiempo, imagencaraYcruz, imagenQuerer, imagenColores;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    angulo = 0;
    girarYparar = FALSE;
}




//*********************************************************
-(IBAction)girarRuleta:(id)sender {
    
    if(!girarYparar) {
        tiempo = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0
                                                  target:self
                                                selector:@selector(selectorRuleta)
                                                userInfo:nil
                                                 repeats:YES];
    } else {
        [tiempo invalidate];
        tiempo = nil;
    }
    girarYparar = !girarYparar;
}

-(void)selectorRuleta {
    self.imagen.center = CGPointMake(self.imagen.center.x, self.imagen.center.y);
    self.imagen.transform = CGAffineTransformMakeRotation (angulo);
    angulo+=0.4;
}
//*********************************************************




//*********************************************************
- (IBAction)querer:(id)sender {
    if(!girarYparar) {
        tiempo = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0
                                                  target:self
                                                selector:@selector(selectorQuerer)
                                                userInfo:nil
                                                 repeats:YES];
    } else {
        [tiempo invalidate];
        tiempo = nil;
    }
    girarYparar = !girarYparar;
    
}
-(void)selectorQuerer {
    self.imagenQuerer.center = CGPointMake(self.imagenQuerer.center.x, self.imagenQuerer.center.y);
    self.imagenQuerer.transform = CGAffineTransformMakeRotation (angulo);
    angulo+=0.4;
}
//*********************************************************



//*********************************************************
- (IBAction)moneda:(id)sender {
    if(!girarYparar) {
        tiempo = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0
                                                  target:self
                                                selector:@selector(selectorMoneda)
                                                userInfo:nil
                                                 repeats:YES];
    } else {
        [tiempo invalidate];
        tiempo = nil;
    }
    girarYparar = !girarYparar;
}
-(void)selectorMoneda {
    self.imagencaraYcruz.center = CGPointMake(self.imagencaraYcruz.center.x, self.imagencaraYcruz.center.y);
    self.imagencaraYcruz.transform = CGAffineTransformMakeRotation (angulo);
    angulo+=0.4;
}
//*********************************************************



//*********************************************************
- (IBAction)colores:(id)sender {
    if(!girarYparar) {
        tiempo = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0
                                                  target:self
                                                selector:@selector(selectorColores)
                                                userInfo:nil
                                                 repeats:YES];
    } else {
        [tiempo invalidate];
        tiempo = nil;
    }
    girarYparar = !girarYparar;
}
-(void)selectorColores {
    self.imagenColores.center = CGPointMake(self.imagenColores.center.x, self.imagenColores.center.y);
    self.imagenColores.transform = CGAffineTransformMakeRotation (angulo);
    angulo+=0.4;
}
//*********************************************************
@end
