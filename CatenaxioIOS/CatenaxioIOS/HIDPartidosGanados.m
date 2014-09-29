//
//  HIDPartidosGanados.m
//  CatenaxioIOS
//
//  Created by Hugo Izquierdo on 9/28/14.
//  Copyright (c) 2014 Hugo Izquierdo. All rights reserved.
//

#import "HIDPartidosGanados.h"

@interface HIDPartidosGanados ()

@end

@implementation HIDPartidosGanados

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"Ganados";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
