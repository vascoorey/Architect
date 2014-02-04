//
//  UIView+ARCHIdentityAdditions.h
//  Architect
//
//  Created by Vasco d'Orey on 03/02/14.
//  Copyright (c) 2014 DeltaDog. All rights reserved.
//

#import "ARCHUtilities.h"

@interface ARCH_VIEW (ARCHIdentityAdditions)

/**
 *  Unique identifier for this view (in relation to it's arch_parentView).
 *  Multiple views can have the same identifier provided they have diferent parents.
 *  Any constraints applied to this view will be related to the parent view if no related view is set.
 */
@property (nonatomic, strong) NSString *arch_identifier;

/**
 *  Gets the view with the given identifier, in relation to the current view and it's parent view.
 *
 *  @param identifier The identifier of the view to find.
 *
 *  @return The sibling view, or nil if none was found.
 */
- (UIView *)arch_siblingWithIdentifier:(NSString *)identifier;

@end
