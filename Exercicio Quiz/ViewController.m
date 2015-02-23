//
//  ViewController.m
//  Exercicio Quiz
//
//  Created by Bruno Omella Mainieri on 2/23/15.
//  Copyright (c) 2015 Bruno Omella. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textoPergunta;
@synthesize textoResposta;
@synthesize imagemResposta;

int current;
NSArray *perguntas;
NSArray *respostas;
NSArray *imagens;

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIButton appearance] setBackgroundColor:[UIColor blackColor]];
    textoPergunta.textColor = [UIColor whiteColor];
    textoResposta.textColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor colorWithRed:0.5 green:0.0 blue:0.6 alpha:0.4];
    
    perguntas = [NSArray arrayWithObjects: @"Qual é o menor país do mundo?", @"Quem inventou a Internet?", @"Qual país tem o maior IDH?", nil];
    respostas = [NSArray arrayWithObjects: @"O Vaticano", @"Sir Tem Berners-Lee",@"A Noruega", nil];
    imagens = [NSArray arrayWithObjects:@"vaticano.png",@"tim.png",@"noruega.png", nil];
    current = -1;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoPergunta:(id)sender {
    current++;
    if(current==[perguntas count])
        current =0;
    textoPergunta.text = [perguntas objectAtIndex:current];
    textoResposta.text = @"???";
    imagemResposta.image = nil;
}

- (IBAction)botaoResposta:(id)sender {
    if(current>=0){
        textoResposta.text = [respostas objectAtIndex:current];
        imagemResposta.image = [UIImage imageNamed:[imagens objectAtIndex:current]];
    }
}
@end
