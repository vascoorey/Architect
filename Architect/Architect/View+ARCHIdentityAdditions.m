//
//  UIView+ARCHIdentityAdditions.m
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "View+ARCHIdentityAdditions.h"
#import <objc/runtime.h>

@interface ARCH_VIEW (ARCHPrivateAdditions)

- (UIView *)arch_findParent:(NSString *)identifier;

@end

@implementation ARCH_VIEW (ARCHIdentityAdditions)

- (void)setArch_identifier:(NSString *)arch_identifier
{
  objc_setAssociatedObject(self, @selector(arch_identifier), arch_identifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_identifier
{
  return objc_getAssociatedObject(self, @selector(arch_identifier));
}

- (UIView *)arch_siblingWithIdentifier:(NSString *)identifier
{
//  if(self.arch_isParentView)
//  {
//    // If we're the parent view then return ourselves only if we have the correct identifier. Otherwise return nil.
//    return [self.arch_identifier isEqualToString:identifier] ? self : nil;
//  }
  for(UIView *view in self.subviews)
  {
    if([view.arch_identifier isEqualToString:identifier])
    {
      return view;
    }
  }
  return [self.superview arch_siblingWithIdentifier:identifier];
}

@end
