//
//  BodyPart.m
//  PoliceSketch
//
//  Created by Sergio Martinez on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "BodyPart.h"

@implementation BodyPart

- (instancetype)initWithImage:(UIImage*)image
{
    self = [super init];
    if (self) {
        
        self.image = image;    
    
    }
    return self;
}

@end
