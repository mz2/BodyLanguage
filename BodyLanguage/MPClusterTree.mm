//
//  MPClusterTree.m
//  BodyLanguage
//
//  Created by Matias Piipari on 13/05/2016.
//  Copyright © 2016 Matias Piipari & Co. All rights reserved.
//

#include <GRT/GRT.h>
using namespace GRT;
using namespace std;

#import "MPClusterTree.h"

NSString *const MPClusterTreeErrorDomain = @"MPClusterTreeErrorDomain";

@implementation MPClusterTree

- (BOOL)trainWithContentsOfURL:(NSURL *)URL error:(NSError **)error {
    MatrixDouble trainingData;
    
    if (!trainingData.loadFromCSVFile(URL.path.UTF8String)) {
        if (error)
            *error = [NSError errorWithDomain:MPClusterTreeErrorDomain
                                         code:MPClusterTreeErrorCodeFailedToLoad
                                     userInfo:@{NSLocalizedDescriptionKey:[NSString stringWithFormat:@"Failed to load contents of URL %@", URL]}];
        return NO;
    }
    
    //Create a new ClusterTree instance
    ClusterTree ctree;
    
    //Set the number of steps that will be used to choose the best splitting values
    //More steps will give you a better model, but will take longer to train
    ctree.setNumSplittingSteps(100);
    
    //Set the maximum depth of the tree
    ctree.setMaxDepth(10);
    
    //Set the minimum number of samples allowed per node
    ctree.setMinNumSamplesPerNode(10);
    
    //Set the minimum RMS error allowed per node
    ctree.setMinRMSErrorPerNode(0.1);
    
    ctree.print();
    
    return YES;
}

@end
