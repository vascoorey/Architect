//
//  UIView+ARCHOffsetAdditions.m
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "View+ARCHOffsetAdditions.h"
#import "View+ARCHIdentityAdditions.h"
#import <objc/runtime.h>
#import <Masonry/Masonry.h>
#import <Classy/Classy.h>

@interface ARCH_VIEW (ARCHPrivateAdditions) <CASStyleableItem>

@property (nonatomic, strong) NSString *arch_leftOffsetViewIdentifier;

@property (nonatomic, strong) NSString *arch_rightOffsetViewIdentifier;

@property (nonatomic, strong) NSString *arch_bottomOffsetViewIdentifier;

@property (nonatomic, strong) NSString *arch_topOffsetViewIdentifier;

@property (nonatomic, readwrite, strong) ARCH_VIEW *arch_topOffsetView;

@property (nonatomic, readwrite, strong) ARCH_VIEW *arch_bottomOffsetView;

@property (nonatomic, readwrite, strong) ARCH_VIEW *arch_leftOffsetView;

@property (nonatomic, readwrite, strong) ARCH_VIEW *arch_rightOffsetView;

@property (nonatomic, readwrite) ARCH_OFFSET arch_leftOffset;

@property (nonatomic, readwrite) ARCH_OFFSET arch_rightOffset;

@property (nonatomic, readwrite) ARCH_OFFSET arch_topOffset;

@property (nonatomic, readwrite) ARCH_OFFSET arch_bottomOffset;

@property (nonatomic, readwrite) ARCHSide arch_topOffsetSide;

@property (nonatomic, readwrite) ARCHSide arch_bottomOffsetSide;

@property (nonatomic, readwrite) ARCHSide arch_leftOffsetSide;

@property (nonatomic, readwrite) ARCHSide arch_rightOffsetSide;

@end

@implementation ARCH_VIEW (ARCHOffsetAdditions)

#pragma mark - Private

- (void)setArch_topOffsetView:(UIView *)arch_topOffsetView
{
  objc_setAssociatedObject(self, @selector(arch_topOffsetView), arch_topOffsetView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCH_VIEW *)arch_topOffsetView
{
  id view = objc_getAssociatedObject(self, @selector(arch_topOffsetView));
  if(!view)
  {
    view = [self arch_siblingWithIdentifier:self.arch_topOffsetViewIdentifier];
    self.arch_topOffsetView = view;
  }
  return view;
}

- (void)setArch_bottomOffsetView:(UIView *)arch_bottomOffsetView
{
  objc_setAssociatedObject(self, @selector(arch_bottomOffsetView), arch_bottomOffsetView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCH_VIEW *)arch_bottomOffsetView
{
  ARCH_VIEW *view = objc_getAssociatedObject(self, @selector(arch_bottomOffsetView));
  if(!view)
  {
    view = [self arch_siblingWithIdentifier:self.arch_bottomOffsetViewIdentifier];
    self.arch_bottomOffsetView = view;
  }
  return view;
}

- (void)setArch_leftOffsetView:(UIView *)arch_leftOffsetView
{
  objc_setAssociatedObject(self, @selector(arch_leftOffsetView), arch_leftOffsetView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCH_VIEW *)arch_leftOffsetView
{
  ARCH_VIEW *view = objc_getAssociatedObject(self, @selector(arch_leftOffsetView));
  if(!view)
  {
    view = [self arch_siblingWithIdentifier:self.arch_leftOffsetViewIdentifier];
    self.arch_leftOffsetView = view;
  }
  return view;
}

- (void)setArch_rightOffsetView:(UIView *)arch_rightOffsetView
{
  objc_setAssociatedObject(self, @selector(arch_rightOffsetView), arch_rightOffsetView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCH_VIEW *)arch_rightOffsetView
{
  ARCH_VIEW *view = objc_getAssociatedObject(self, @selector(arch_rightOffsetView));
  if(!view)
  {
    view = [self arch_siblingWithIdentifier:self.arch_rightOffsetViewIdentifier];
    self.arch_rightOffsetView = view;
  }
  return view;
}

#pragma mark - Public

- (void)setArch_topOffsetViewIdentifier:(NSString *)arch_topOffsetViewIdentifier
{
  self.arch_topOffsetView = nil;
  objc_setAssociatedObject(self, @selector(arch_topOffsetViewIdentifier), arch_topOffsetViewIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_topOffsetViewIdentifier
{
  return objc_getAssociatedObject(self, @selector(arch_topOffsetViewIdentifier));
}

- (void)setArch_bottomOffsetViewIdentifier:(NSString *)arch_bottomOffsetViewIdentifier
{
  self.arch_bottomOffsetView = nil;
  objc_setAssociatedObject(self, @selector(arch_bottomOffsetViewIdentifier), arch_bottomOffsetViewIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_bottomOffsetViewIdentifier
{
  return objc_getAssociatedObject(self, @selector(arch_bottomOffsetViewIdentifier));
}

- (void)setArch_leftOffsetViewIdentifier:(NSString *)arch_leftOffsetViewIdentifier
{
  self.arch_leftOffsetView = nil;
  objc_setAssociatedObject(self, @selector(arch_leftOffsetViewIdentifier), arch_leftOffsetViewIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_leftOffsetViewIdentifier
{
  return objc_getAssociatedObject(self, @selector(arch_leftOffsetViewIdentifier));
}

- (void)setArch_rightOffsetViewIdentifier:(NSString *)arch_rightOffsetViewIdentifier
{
  self.arch_rightOffsetView = nil;
  objc_setAssociatedObject(self, @selector(arch_rightOffsetViewIdentifier), arch_rightOffsetViewIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)arch_rightOffsetViewIdentifier
{
  return objc_getAssociatedObject(self, @selector(arch_rightOffsetViewIdentifier));
}

#pragma mark - Offsets

- (void)setArch_topOffset:(ARCH_OFFSET)arch_topOffset
{
  objc_setAssociatedObject(self, @selector(arch_topOffset), @(arch_topOffset), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  [self setNeedsUpdateConstraints];
}

- (ARCH_OFFSET)arch_topOffset
{
  return [objc_getAssociatedObject(self, @selector(arch_topOffset)) floatValue];
}

- (void)setArch_bottomOffset:(ARCH_OFFSET)arch_bottomOffset
{
  objc_setAssociatedObject(self, @selector(arch_bottomOffset), @(arch_bottomOffset), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  [self setNeedsUpdateConstraints];
}

- (ARCH_OFFSET)arch_bottomOffset
{
  return [objc_getAssociatedObject(self, @selector(arch_bottomOffset)) floatValue];
}

- (void)setArch_leftOffset:(ARCH_OFFSET)arch_leftOffset
{
  objc_setAssociatedObject(self, @selector(arch_leftOffset), @(arch_leftOffset), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  [self setNeedsUpdateConstraints];
}

- (ARCH_OFFSET)arch_leftOffset
{
  return [objc_getAssociatedObject(self, @selector(arch_leftOffset)) floatValue];
}

- (void)setArch_rightOffset:(ARCH_OFFSET)arch_rightOffset
{
  objc_setAssociatedObject(self, @selector(arch_rightOffset), @(arch_rightOffset), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  [self setNeedsUpdateConstraints];
}

- (ARCH_OFFSET)arch_rightOffset
{
  return [objc_getAssociatedObject(self, @selector(arch_rightOffset)) floatValue];
}

#pragma mark - Sides

- (void)setArch_topOffsetSide:(ARCHSide)arch_topOffsetSide
{
  objc_setAssociatedObject(self, @selector(arch_topOffsetSide), @(arch_topOffsetSide), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCHSide)arch_topOffsetSide
{
  return [objc_getAssociatedObject(self, @selector(arch_topOffsetSide)) integerValue];
}

- (void)setArch_bottomOffsetSide:(ARCHSide)arch_bottomOffsetSide
{
  objc_setAssociatedObject(self, @selector(arch_bottomOffsetSide), @(arch_bottomOffsetSide), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCHSide)arch_bottomOffsetSide
{
  return [objc_getAssociatedObject(self, @selector(arch_bottomOffsetSide)) integerValue];
}

- (void)setArch_leftOffsetSide:(ARCHSide)arch_leftOffsetSide
{
  objc_setAssociatedObject(self, @selector(arch_leftOffsetSide), @(arch_leftOffsetSide), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCHSide)arch_leftOffsetSide
{
  return [objc_getAssociatedObject(self, @selector(arch_leftOffsetSide)) integerValue];
}

- (void)setArch_rightOffsetSide:(ARCHSide)arch_rightOffsetSide
{
  objc_setAssociatedObject(self, @selector(arch_rightOffsetSide), @(arch_rightOffsetSide), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ARCHSide)arch_rightOffsetSide
{
  return [objc_getAssociatedObject(self, @selector(arch_rightOffsetSide)) integerValue];
}

#pragma mark - Constraint Strings

- (void)setArch_topOffsetConstraint:(NSString *)arch_topOffsetConstraint
{
  objc_setAssociatedObject(self, @selector(arch_topOffsetConstraint), arch_topOffsetConstraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  // Parse the constraint string
  NSArray *components = [arch_topOffsetConstraint componentsSeparatedByString:@" "];
  if(components.count != 3)
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Constraint string is invalid" userInfo:nil] raise];
  }
  self.arch_topOffset = [components[0] floatValue];
  self.arch_topOffsetViewIdentifier = components[1];
  NSString *side = components[2];
  if([side isEqualToString:@"top"])
  {
    self.arch_topOffsetSide = ARCHSideTop;
  }
  else if([side isEqualToString:@"bottom"])
  {
    self.arch_topOffsetSide = ARCHSideBottom;
  }
  else if([side isEqualToString:@"left"])
  {
    self.arch_topOffsetSide = ARCHSideLeft;
  }
  else if([side isEqualToString:@"right"])
  {
    self.arch_topOffsetSide = ARCHSideRight;
  }
  else
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Invalid side set to constraint" userInfo:nil] raise];
  }
  [self setNeedsUpdateConstraints];
}

- (NSString *)arch_topOffsetConstraint
{
  return objc_getAssociatedObject(self, @selector(arch_topOffsetConstraint));
}

- (void)setArch_bottomOffsetConstraint:(NSString *)arch_bottomOffsetConstraint
{
  objc_setAssociatedObject(self, @selector(arch_bottomOffsetConstraint), arch_bottomOffsetConstraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  // Parse the constraint string
  NSArray *components = [arch_bottomOffsetConstraint componentsSeparatedByString:@" "];
  if(components.count != 3)
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Constraint string is invalid" userInfo:nil] raise];
  }
  self.arch_bottomOffset = [components[0] floatValue];
  self.arch_bottomOffsetViewIdentifier = components[1];
  NSString *side = components[2];
  if([side isEqualToString:@"top"])
  {
    self.arch_bottomOffsetSide = ARCHSideTop;
  }
  else if([side isEqualToString:@"bottom"])
  {
    self.arch_bottomOffsetSide = ARCHSideBottom;
  }
  else if([side isEqualToString:@"left"])
  {
    self.arch_bottomOffsetSide = ARCHSideLeft;
  }
  else if([side isEqualToString:@"right"])
  {
    self.arch_bottomOffsetSide = ARCHSideRight;
  }
  else
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Invalid side set to constraint" userInfo:nil] raise];
  }
  [self setNeedsUpdateConstraints];
}

- (NSString *)arch_bottomOffsetConstraint
{
  return objc_getAssociatedObject(self, @selector(arch_bottomOffsetConstraint));
}

- (void)setArch_leftOffsetConstraint:(NSString *)arch_leftOffsetConstraint
{
  objc_setAssociatedObject(self, @selector(arch_leftOffsetConstraint), arch_leftOffsetConstraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  // Parse the constraint string
  NSArray *components = [arch_leftOffsetConstraint componentsSeparatedByString:@" "];
  if(components.count != 3)
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Constraint string is invalid" userInfo:nil] raise];
  }
  self.arch_leftOffset = [components[0] floatValue];
  self.arch_leftOffsetViewIdentifier = components[1];
  NSString *side = components[2];
  if([side isEqualToString:@"top"])
  {
    self.arch_leftOffsetSide = ARCHSideTop;
  }
  else if([side isEqualToString:@"bottom"])
  {
    self.arch_leftOffsetSide = ARCHSideBottom;
  }
  else if([side isEqualToString:@"left"])
  {
    self.arch_leftOffsetSide = ARCHSideLeft;
  }
  else if([side isEqualToString:@"right"])
  {
    self.arch_leftOffsetSide = ARCHSideRight;
  }
  else
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Invalid side set to constraint" userInfo:nil] raise];
  }
  [self setNeedsUpdateConstraints];
}

- (NSString *)arch_leftOffsetConstraint
{
  return objc_getAssociatedObject(self, @selector(arch_leftOffsetConstraint));
}

- (void)setArch_rightOffsetConstraint:(NSString *)arch_rightOffsetConstraint
{
  objc_setAssociatedObject(self, @selector(arch_rightOffsetConstraint), arch_rightOffsetConstraint, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
  // Parse the constraint string
  NSArray *components = [arch_rightOffsetConstraint componentsSeparatedByString:@" "];
  if(components.count != 3)
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Constraint string is invalid" userInfo:nil] raise];
  }
  self.arch_rightOffset = [components[0] floatValue];
  self.arch_rightOffsetViewIdentifier = components[1];
  NSString *side = components[2];
  if([side isEqualToString:@"top"])
  {
    self.arch_rightOffsetSide = ARCHSideTop;
  }
  else if([side isEqualToString:@"bottom"])
  {
    self.arch_rightOffsetSide = ARCHSideBottom;
  }
  else if([side isEqualToString:@"left"])
  {
    self.arch_rightOffsetSide = ARCHSideLeft;
  }
  else if([side isEqualToString:@"right"])
  {
    self.arch_rightOffsetSide = ARCHSideRight;
  }
  else
  {
    [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Invalid side set to constraint" userInfo:nil] raise];
  }
  [self setNeedsUpdateConstraints];
}

- (NSString *)arch_rightOffsetConstraint
{
  return objc_getAssociatedObject(self, @selector(arch_rightOffsetConstraint));
}

@end
