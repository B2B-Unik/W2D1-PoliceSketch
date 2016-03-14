//
//  PoliceSketch.m
//  PoliceSketch
//
//  Created by Sergio Martinez on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "PoliceSketch.h"
#import "BodyPart.h"

@interface PoliceSketch ()

@property NSInteger currentEyeIndex;
@property NSInteger currentNoseIndex;
@property NSInteger currentMouthIndex;

@end

@implementation PoliceSketch

- (UIImage *)nextEyeImage {
    
    self.currentEyeIndex++;
    if (self.currentEyeIndex >= [PoliceSketch listOfEyeImages].count) {
        self.currentEyeIndex = 0;
    }
    
    BodyPart *part = [PoliceSketch listOfEyeImages][self.currentEyeIndex];
    
    return part.image;
    
}

- (UIImage *)previousEyeImage {
    self.currentEyeIndex--;
    if (self.currentEyeIndex <= 0) {
        self.currentEyeIndex = [PoliceSketch listOfEyeImages].count-1;
    }
    BodyPart *part = [PoliceSketch listOfEyeImages][self.currentEyeIndex];
    
    return part.image;
}

- (UIImage *)nextNoseImage {
    
    self.currentNoseIndex++;
    if (self.currentNoseIndex >= [PoliceSketch listOfNoseImages].count) {
        self.currentNoseIndex = 0;
    }
    
    BodyPart *part = [PoliceSketch listOfNoseImages][self.currentNoseIndex];
    
    return part.image;
    
}

- (UIImage *)previousNoseImage {
    self.currentNoseIndex--;
    if (self.currentNoseIndex <= 0) {
        self.currentNoseIndex = [PoliceSketch listOfNoseImages].count-1;
    }
    BodyPart *part = [PoliceSketch listOfNoseImages][self.currentNoseIndex];
    
    return part.image;
}

- (UIImage *)nextMouthImage {
    
    self.currentMouthIndex++;
    if (self.currentMouthIndex >= [PoliceSketch listOfMouthImages].count) {
        self.currentMouthIndex = 0;
    }
    
    BodyPart *part = [PoliceSketch listOfMouthImages][self.currentMouthIndex];
    
    return part.image;
    
}

- (UIImage *)previousMouthImage {
    self.currentMouthIndex--;
    if (self.currentMouthIndex <= 0) {
        self.currentMouthIndex = [PoliceSketch listOfMouthImages].count-1;
    }
    BodyPart *part = [PoliceSketch listOfMouthImages][self.currentMouthIndex];
    
    return part.image;
}

+ (NSArray*)listOfEyeImages {
    
   return @[
            [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"eyes_1.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"eyes_2.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"eyes_3.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"eyes_4.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"eyes_5.jpg"]]
            ];
}

+ (NSArray*)listOfNoseImages {
    
    return @[
             [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"nose_1.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"nose_2.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"nose_3.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"nose_4.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"nose_5.jpg"]]
             ];
}

+ (NSArray*)listOfMouthImages {
    
    return @[
             [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"mouth_1.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"mouth_2.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"mouth_3.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"mouth_4.jpg"]], [[BodyPart alloc] initWithImage:[UIImage imageNamed:@"mouth_5.jpg"]]
             ];
}

@end
