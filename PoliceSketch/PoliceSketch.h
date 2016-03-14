//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Sergio Martinez on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BodyPart.h"

@interface PoliceSketch : NSObject

- (UIImage *)nextEyeImage;
- (UIImage *)previousEyeImage;

- (UIImage *)nextNoseImage;
- (UIImage *)previousNoseImage;

- (UIImage *)nextMouthImage;
- (UIImage *)previousMouthImage;



@end
