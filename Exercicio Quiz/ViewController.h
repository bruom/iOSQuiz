//
//  ViewController.h
//  Exercicio Quiz
//
//  Created by Bruno Omella Mainieri on 2/23/15.
//  Copyright (c) 2015 Bruno Omella. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *textoPergunta;
@property (weak, nonatomic) IBOutlet UILabel *textoResposta;
@property (weak, nonatomic) IBOutlet UIImageView *imagemResposta;

- (IBAction)botaoPergunta:(id)sender;

- (IBAction)botaoResposta:(id)sender;


@end

