//
//  ViewController.m
//  Architect
//
//  Created by Vasco d'Orey on 02/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ViewController.h"
#import "Architect.h"

@interface ViewController ()

@property (nonatomic, strong) ARCHView *redView;

@property (nonatomic, strong) ARCHView *greenView;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  // Set the current view as the main organizer
  self.view.arch_identifier = @"main";
  self.view.cas_styleClass = @"main";
  
  self.redView = [[ARCHView alloc] init];
  self.redView.cas_styleClass = @"red-view";
  self.redView.arch_identifier = @"red";
  [self.view addSubview:self.redView];
  
  self.greenView = [[ARCHView alloc] init];
  self.greenView.cas_styleClass = @"green-view";
  self.greenView.arch_identifier = @"green";
  [self.view addSubview:self.greenView];
}

@end
