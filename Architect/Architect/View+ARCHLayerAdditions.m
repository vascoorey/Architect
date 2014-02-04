//
//  View+ARCHLayerAdditions.m
//  Architect
//
//  Created by Vasco d'Orey on 04/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "View+ARCHLayerAdditions.h"
#import <objc/runtime.h>

@implementation ARCH_VIEW (ARCHLayerAdditions)

- (void)setArch_cornerRadius:(CGFloat)arch_cornerRadius
{
  objc_setAssociatedObject(self, @selector(arch_cornerRadius), @(arch_cornerRadius), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  self.layer.cornerRadius = arch_cornerRadius;
  [self setNeedsDisplay];
}

- (CGFloat)arch_cornerRadius
{
  return [objc_getAssociatedObject(self, @selector(arch_cornerRadius)) floatValue];
}

@end
