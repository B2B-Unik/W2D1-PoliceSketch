//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "PoliceSketch.h"

@interface LPSViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyeView;
@property (weak, nonatomic) IBOutlet UIImageView *noseView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthView;

@property (nonatomic, strong) PoliceSketch *currentFace;

@end

@implementation LPSViewController

- (IBAction)cycleMouthForwardButton:(UIButton *)sender {
    self.mouthView.image = [self.currentFace nextMouthImage];
}
- (IBAction)cycleMouthBackwardButton:(UIButton *)sender {
    self.mouthView.image = [self.currentFace previousMouthImage];
}

- (IBAction)cycleNoseForwardButton:(UIButton *)sender {
    self.noseView.image = [self.currentFace nextNoseImage];
}
- (IBAction)cycleNoseBackwardButton:(UIButton *)sender {
    self.noseView.image = [self.currentFace previousNoseImage];
}

- (IBAction)cycleEyeForwardButton:(UIButton *)sender {
    self.eyeView.image = [self.currentFace nextEyeImage];
}

- (IBAction)cycleEyeBackwardButton:(UIButton *)sender {
    self.eyeView.image = [self.currentFace previousEyeImage];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.currentFace = [[PoliceSketch alloc] init];
}

@end
