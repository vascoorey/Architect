//
//  View+ARCHSizeAdditions.h
//  Architect
//
//  Created by Vasco d'Orey on 05/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ARCHUtilities.h"

@interface ARCH_VIEW (ARCHSizeAdditions)

@property (nonatomic, readonly) CGFloat arch_width;

@property (nonatomic, readonly) CGFloat arch_height;

@property (nonatomic, readonly) CGFloat arch_widthMultiplier;

@property (nonatomic, readonly) CGFloat arch_heightMultiplier;

@property (nonatomic, readonly) ARCH_VIEW *arch_widthView;

@property (nonatomic, readonly) ARCH_VIEW *arch_heightView;

@property (nonatomic, readonly) ARCHSizeSide arch_widthSide;

@property (nonatomic, readonly) ARCHSizeSide arch_heightSide;

/**
 *  "200"
 *  "view height"
 *  "view height multiplier"
 */
@property (nonatomic, strong) NSString *arch_widthConstraint;

@property (nonatomic, strong) NSString *arch_heightConstraint;

@end
