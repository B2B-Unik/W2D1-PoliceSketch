//
//  BodyPart.h
//  PoliceSketch
//
//  Created by Sergio Martinez on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BodyPart : NSObject

@property (nonatomic) UIImage *image;

- (instancetype)initWithImage:(UIImage*)image;

@end
