//
//  ARCHView.m
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ARCHView.h"
#import "Architect.h"
#import <Masonry/Masonry.h>
#import <Classy/Classy.h>

@interface ARCHView ()

@property (nonatomic, strong) NSMutableArray *arch_constraints;

@end

@implementation ARCHView

- (void)updateConstraints
{
  [self.arch_constraints makeObjectsPerformSelector:@selector(uninstall)];
  self.arch_constraints = NSMutableArray.array;
  if(self.arch_topOffsetView)
  {
    [self.arch_constraints addObjectsFromArray:[self mas_makeConstraints:^(MASConstraintMaker *make) {
      id top;
      if(self.arch_topOffsetSide == ARCHSideTop)
      {
        top = self.arch_topOffsetView.mas_top;
      }
      else if(self.arch_topOffsetSide == ARCHSideBottom)
      {
        top = self.arch_topOffsetView.mas_bottom;
      }
      else if(self.arch_topOffsetSide == ARCHSideLeft)
      {
        top = self.arch_topOffsetView.mas_left;
      }
      else
      {
        top = self.arch_topOffsetView.mas_right;
      }
      make.top.equalTo(top).with.offset(self.arch_topOffset);
    }]];
  }
  if(self.arch_bottomOffsetView)
  {
    [self.arch_constraints addObjectsFromArray:[self mas_makeConstraints:^(MASConstraintMaker *make) {
      id bottom;
      if(self.arch_bottomOffsetSide == ARCHSideBottom)
      {
        bottom = self.arch_bottomOffsetView.mas_bottom;
      }
      else if(self.arch_bottomOffsetSide == ARCHSideTop)
      {
        bottom = self.arch_bottomOffsetView.mas_top;
      }
      else if(self.arch_bottomOffsetSide == ARCHSideLeft)
      {
        bottom = self.arch_bottomOffsetView.mas_left;
      }
      else
      {
        bottom = self.arch_bottomOffsetView.mas_right;
      }
      make.bottom.equalTo(bottom).with.offset(self.arch_bottomOffset);
    }]];
  }
  if(self.arch_leftOffsetView)
  {
    [self.arch_constraints addObjectsFromArray:[self mas_makeConstraints:^(MASConstraintMaker *make) {
      id left;
      if(self.arch_leftOffsetSide == ARCHSideBottom)
      {
        left = self.arch_leftOffsetView.mas_bottom;
      }
      else if(self.arch_leftOffsetSide == ARCHSideTop)
      {
        left = self.arch_leftOffsetView.mas_top;
      }
      else if(self.arch_leftOffsetSide == ARCHSideLeft)
      {
        left = self.arch_leftOffsetView.mas_left;
      }
      else
      {
        left = self.arch_leftOffsetView.mas_right;
      }
      make.left.equalTo(left).with.offset(self.arch_leftOffset);
    }]];
  }
  if(self.arch_rightOffsetView)
  {
    [self.arch_constraints addObjectsFromArray:[self mas_makeConstraints:^(MASConstraintMaker *make) {
      id right;
      if(self.arch_rightOffsetSide == ARCHSideBottom)
      {
        right = self.arch_rightOffsetView.mas_bottom;
      }
      else if(self.arch_rightOffsetSide == ARCHSideTop)
      {
        right = self.arch_rightOffsetView.mas_top;
      }
      else if(self.arch_rightOffsetSide == ARCHSideLeft)
      {
        right = self.arch_rightOffsetView.mas_left;
      }
      else
      {
        right = self.arch_rightOffsetView.mas_right;
      }
      make.right.equalTo(right).with.offset(self.arch_rightOffset);
    }]];
  }
  NSLog(@"%@", self.arch_constraints);
  [super updateConstraints];
}

@end
