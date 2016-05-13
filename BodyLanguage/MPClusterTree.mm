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

@implementation MPClusterTree

- (void)foo {
    //Load some training data to train the ClusterTree model
    MatrixDouble trainingData;
    if (!trainingData.loadFromCSVFile("ClusterTreeData.csv")) {
        NSLog(@"Failed to load training data!");
        return;
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
    
    ctree.print()
}

@end
