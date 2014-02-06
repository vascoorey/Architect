//
//  ARCHUtilities.h
//  Architect
//
//  Created by Vasco d'Orey on 02/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARCHView.h"

#define ARCH_VIEW UIView

#define ARCH_OFFSET CGFloat

#define ARCH_MULTIPLIER CGFloat

typedef NS_ENUM(NSInteger, ARCHSide) {
  ARCHSideInvalid,
  ARCHSideTop,
  ARCHSideBottom,
  ARCHSideLeft,
  ARCHSideRight
};

typedef NS_ENUM(NSInteger, ARCHSizeSide) {
  ARCHSizeSideInvalid,
  ARCHSizeSideWidth,
  ARCHSizeSideHeight
};

typedef NS_ENUM(NSInteger, ARCHSpecifier) {
  ARCHSpecifierInvalid,
  ARCHSpecifierGreaterThan,
  ARCHSpecifierGreaterThanOrEqualTo,
  ARCHSpecifierEqualTo,
  ARCHSpecifierLessThan,
  ARCHSpecifierLessThanOrEqualTo
};

typedef NS_ENUM(NSInteger, ARCHPriority) {
  ARCHPriorityInvalid,
  ARCHPriorityLow,
  ARCHPriorityMedium,
  ARCHPriorityHigh,
  ARCHPriorityCustom
};
