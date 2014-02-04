//
//  UIViewController+ARCHConstraintAdditions.h
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ARCHUtilities.h"

@interface UIViewController (ARCHConstraintAdditions)

@property (nonatomic, strong) NSArray *arch_constraintItems;

- (void)arch_addConstraintItem:(ARCH_VIEW *)view;

@end
