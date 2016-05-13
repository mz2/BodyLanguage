//
//  MPClusterTree.h
//  BodyLanguage
//
//  Created by Matias Piipari on 13/05/2016.
//  Copyright © 2016 Matias Piipari & Co. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *_Nonnull const MPClusterTreeErrorDomain;

typedef NS_ENUM(NSUInteger, MPClusterTreeErrorCode) {
    MPClusterTreeErrorCodeFailedToLoad = 1
};

@interface MPClusterTree : NSObject

- (BOOL)trainWithContentsOfURL:(nonnull NSURL *)URL error:(NSError *_Nullable *_Nullable)error;

@end
