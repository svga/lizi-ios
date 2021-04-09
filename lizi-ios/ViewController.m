//
//  ViewController.m
//  lizi-ios
//
//  Created by PonyCui on 2021/4/9.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupEmitter];
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)setupEmitter {
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    [emitterLayer setFrame:CGRectMake(0, 0, 300, 300)];
    emitterLayer.emitterPosition = CGPointMake(150, 200);
    emitterLayer.emitterSize = CGSizeMake(150, 150);
    emitterLayer.emitterShape = @"circle";
    emitterLayer.emitterMode = @"outline";
    emitterLayer.birthRate = 10;
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.birthRate = 10;
    cell.lifetime = 4;
    cell.lifetimeRange = 0.5;
    cell.color = [UIColor whiteColor].CGColor;
    cell.contents = (__bridge id)[UIImage imageNamed:@"icon_round"].CGImage;
    cell.alphaRange = 0.5;
    cell.alphaSpeed = -0.5;
    cell.velocity = 200;
    cell.velocityRange = 80;
    cell.emissionLongitude = M_PI * 1.5;
    cell.emissionRange = M_PI * 0.1;
    cell.yAcceleration = 200.0;
    cell.xAcceleration = 88.0;
    cell.scale = 0.2;
    cell.scaleSpeed = 0.6;
    cell.scaleRange = 2.0;
    cell.spin = M_PI * 3;
    cell.spinRange = M_PI;
    [emitterLayer setEmitterCells:@[cell]];
    [self.view.layer addSublayer:emitterLayer];
}


@end
