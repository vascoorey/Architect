//
//  View+ARCHSizeAdditions.m
//  Architect
//
//  Created by Vasco d'Orey on 05/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "View+ARCHSizeAdditions.h"
#import "View+ARCHIdentityAdditions.h"
#import <objc/runtime.h>

@interface ARCH_VIEW (ARCHPrivateAdditions)

@property (nonatomic, readwrite) CGFloat arch_width;

@property (nonatomic, readwrite) CGFloat arch_height;

@property (nonatomic, readwrite) CGFloat arch_widthMultiplier;

@property (nonatomic, readwrite) CGFloat arch_heightMultiplier;

@property (nonatomic, readwrite) ARCH_VIEW *arch_widthView;

@property (nonatomic, readwrite) ARCH_VIEW *arch_heightView;

@property (nonatomic, strong) NSString *arch_widthViewIdentifier;

@property (nonatomic, strong) NSString *arch_heightViewIdentifier;

@property (nonatomic, readwrite) ARCHSizeSide arch_widthSide;

@property (nonatomic, readwrite) ARCHSizeSide arch_heightSide;

@end

@implementation ARCH_VIEW (ARCHSizeAdditions)

- (void)setArch_widthConstraint:(NSString *)arch_widthConstraint
{
  objc_setAssociatedObject(self, @selector(arch_widthConstraint), arch_widthConstraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  NSArray *components = [arch_widthConstraint componentsSeparatedByString:@" "];
  if(components.count == 1)
  {
    self.arch_width = [components[0] floatValue];
  }
  else if(components.count >= 2)
  {
    self.arch_widthViewIdentifier = components[0];
    if([components[1] isEqualToString:@"width"])
    {
      self.arch_widthSide = ARCHSizeSideWidth;
    }
    else if([components[1] isEqualToString:@"height"])
    {
      self.arch_widthSide = ARCHSizeSideHeight;
    }
    else
    {
      self.arch_widthSide = ARCHSizeSideInvalid;
    }
    self.arch_heightMultiplier = 1.f;
    if(components.count == 3)
    {
      self.arch_widthMultiplier = [components[2] floatValue];
    }
  }
  else
  {
    self.arch_width = 0.f;
    self.arch_widthView = nil;
    self.arch_widthSide = ARCHSizeSideInvalid;
  }
}

- (NSString *)arch_widthConstraint
{
  return objc_getAssociatedObject(self, @selector(arch_widthConstraint));
}

- (void)setArch_heightConstraint:(NSString *)arch_heightConstraint
{
  objc_setAssociatedObject(self, @selector(arch_heightConstraint), arch_heightConstraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  NSArray *components = [arch_heightConstraint componentsSeparatedByString:@" "];
  if(components.count == 1)
  {
    self.arch_height = [components[0] floatValue];
  }
  else if(components.count >= 2)
  {
    self.arch_heightViewIdentifier = components[0];
    if([components[1] isEqualToString:@"width"])
    {
      self.arch_heightSide = ARCHSizeSideWidth;
    }
    else if([components[1] isEqualToString:@"height"])
    {
      self.arch_heightSide = ARCHSizeSideHeight;
    }
    else
    {
      self.arch_heightSide = ARCHSizeSideInvalid;
    }
    self.arch_widthMultiplier = 1.f;
    if(components.count == 3)
    {
      self.arch_heightMultiplier = [components[2] floatValue];
    }
  }
  else
  {
    self.arch_height = 0.f;
    self.arch_heightView = nil;
    self.arch_heightSide = ARCHSizeSideInvalid;
  }
}

- (NSString *)arch_heightConstraint
{
  return objc_getAssociatedObject(self, @selector(arch_heightConstraint));
}

#pragma mark - Private

- (void)setArch_height:(CGFloat)arch_height
{
  objc_setAssociatedObject(self, @selector(arch_height), @(arch_height), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)arch_height
{
  return [objc_getAssociatedObject(self, @selector(arch_height)) floatValue];
}

- (void)setArch_width:(CGFloat)arch_width
{
  objc_setAssociatedObject(self, @selector(arch_width), @(arch_width), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)arch_width
{
  return [objc_getAssociatedObject(self, @selector(arch_width)) floatValue];
}

- (void)setArch_widthMultiplier:(CGFloat)arch_widthMultiplier
{
  objc_setAssociatedObject(self, @selector(arch_widthMultiplier), @(arch_widthMultiplier), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)arch_widthMultiplier
{
  return [objc_getAssociatedObject(self, @selector(arch_widthMultiplier)) floatValue];
}

- (void)setArch_heightMultiplier:(CGFloat)arch_heightMultiplier
{
  objc_setAssociatedObject(self, @selector(arch_heightMultiplier), @(arch_heightMultiplier), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)arch_heightMultiplier
{
  return [objc_getAssociatedObject(self, @selector(arch_heightMultiplier)) floatValue];
}

- (void)setArch_heightViewIdentifier:(NSString *)arch_heightViewIdentifier
{
  self.arch_heightView = nil;
  objc_setAssociatedObject(self, @selector(arch_heightViewIdentifier), arch_heightViewIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_heightViewIdentifier
{
  return objc_getAssociatedObject(self, @selector(arch_heightViewIdentifier));
}

- (void)setArch_widthViewIdentifier:(NSString *)arch_widthViewIdentifier
{
  self.arch_widthView = nil;
  objc_setAssociatedObject(self, @selector(arch_widthViewIdentifier), arch_widthViewIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_widthViewIdentifier
{
  return objc_getAssociatedObject(self, @selector(arch_widthViewIdentifier));
}

- (void)setArch_widthView:(ARCH_VIEW *)arch_widthView
{
  objc_setAssociatedObject(self, @selector(arch_widthView), arch_widthView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCH_VIEW *)arch_widthView
{
  id view = objc_getAssociatedObject(self, @selector(arch_widthView));
  if(!view)
  {
    view = [self arch_siblingWithIdentifier:self.arch_widthViewIdentifier];
    self.arch_widthView = view;
  }
  return view;
}

- (void)setArch_heightView:(ARCH_VIEW *)arch_heightView
{
  objc_setAssociatedObject(self, @selector(arch_heightView), arch_heightView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCH_VIEW *)arch_heightView
{
  id view = objc_getAssociatedObject(self, @selector(arch_heightView));
  if(!view)
  {
    view = [self arch_siblingWithIdentifier:self.arch_heightViewIdentifier];
    self.arch_heightView = view;
  }
  return view;
}

- (void)setArch_widthSide:(ARCHSizeSide)arch_widthSide
{
  objc_setAssociatedObject(self, @selector(arch_widthSide), @(arch_widthSide), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCHSizeSide)arch_widthSide
{
  return [objc_getAssociatedObject(self, @selector(arch_widthSide)) integerValue];
}

- (void)setArch_heightSide:(ARCHSizeSide)arch_heightSide
{
  objc_setAssociatedObject(self, @selector(arch_heightSide), @(arch_heightSide), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCHSizeSide)arch_heightSide
{
  return [objc_getAssociatedObject(self, @selector(arch_heightSide)) integerValue];
}

@end
