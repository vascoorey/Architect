//
//  View+ARCHShorthandAdditions.h
//  Architect
//
//  Created by Vasco d'Orey on 02/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ARCHUtilities.h"

#ifdef ARCH_SHORTHAND

/**
 *	Shorthand view additions without the 'arch_' prefixes,
 *  only enabled if ARCH_SHORTHAND is defined
 */
@interface ARCH_VIEW (ARCHShorthandAdditions)

@property (nonatomic, getter = isParentView) BOOL parentView;

@end

@implementation MAS_VIEW (MASShorthandAdditions)

- (void)setParentView:(BOOL)parentView
{
  [self setArch_parentView:parentView];
}

- (BOOL)isParentView
{
  return [self arch_isParentView];
}

@end

#endif
