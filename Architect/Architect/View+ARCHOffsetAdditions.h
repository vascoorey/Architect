//
//  UIView+ARCHOffsetAdditions.h
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ARCHUtilities.h"



@interface ARCH_VIEW (ARCHOffsetAdditions)

/**
 *  The view related to the left offset.
 */
@property (nonatomic, readonly) ARCH_VIEW *arch_leftOffsetView;

/**
 *  The view related to the right offset.
 */
@property (nonatomic, readonly) ARCH_VIEW *arch_rightOffsetView;

/**
 *  The view related to the top offset.
 */
@property (nonatomic, readonly) ARCH_VIEW *arch_topOffsetView;

/**
 *  The view related to the bottom offset.
 */
@property (nonatomic, readonly) ARCH_VIEW *arch_bottomOffsetView;

/**
 *  The offset to apply over the left view.
 */
@property (nonatomic, readonly) ARCH_OFFSET arch_leftOffset;

/**
 *  The offset to apply over the left view.
 */
@property (nonatomic, readonly) ARCH_OFFSET arch_rightOffset;

/**
 *  The offset to apply over the left view.
 */
@property (nonatomic, readonly) ARCH_OFFSET arch_topOffset;

/**
 *  The offset to apply over the left view.
 */
@property (nonatomic, readonly) ARCH_OFFSET arch_bottomOffset;

@property (nonatomic, readonly) ARCHSide arch_topOffsetSide;

@property (nonatomic, readonly) ARCHSide arch_bottomOffsetSide;

@property (nonatomic, readonly) ARCHSide arch_leftOffsetSide;

@property (nonatomic, readonly) ARCHSide arch_rightOffsetSide;

@property (nonatomic, strong) NSString *arch_topOffsetConstraint;

@property (nonatomic, strong) NSString *arch_bottomOffsetConstraint;

@property (nonatomic, strong) NSString *arch_leftOffsetConstraint;

@property (nonatomic, strong) NSString *arch_rightOffsetConstraint;

@end
