//
//  UIViewController+ARCHConstraintAdditions.m
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "UIViewController+ARCHConstraintAdditions.h"
#import "ARCHUtilities.h"
#import "View+ARCHIdentityAdditions.h"
#import "View+ARCHOffsetAdditions.h"
#import <objc/runtime.h>

@implementation UIViewController (ARCHConstraintAdditions)

- (void)setArch_constraintItems:(NSArray *)arch_constraintItems
{
  objc_setAssociatedObject(self, @selector(arch_constraintItems), arch_constraintItems, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSArray *)arch_constraintItems
{
  return objc_getAssociatedObject(self, @selector(arch_constraintItems));
}

- (void)arch_addConstraintItem:(UIView *)view
{
  NSArray *items = self.arch_constraintItems;
  if(!items)
  {
    items = [NSArray array];
  }
  self.arch_constraintItems = [items arrayByAddingObject:view];
}

@end
