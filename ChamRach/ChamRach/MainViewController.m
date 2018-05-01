//
//  MainViewController.m
//  ChamRach
//
//  Created by Daniel Hadar on 01/05/2018.
//  Copyright © 2018 Daniel Hadar. All rights reserved.
//

#import "MainViewController.h"

#import "GPUImage.h"

@interface MainViewController ()

@property (readonly, nonatomic) GPUImageVideoCamera *videoCamera;

@end

@implementation MainViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  _videoCamera = [[GPUImageVideoCamera alloc]
                  initWithSessionPreset:AVCaptureSessionPreset640x480
                  cameraPosition:AVCaptureDevicePositionBack];
  self.videoCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
  
//  GPUImageFilter *filter = [[GPUImageSepiaFilter alloc] init];
//  [self.videoCamera addTarget:filter];
  
  GPUImageView *filteredVideoView =
      [[GPUImageView alloc] initWithFrame:CGRectMake(0.0, 0.0,
                                                     self.view.bounds.size.width,
                                                     self.view.bounds.size.height)];
  filteredVideoView.fillMode = kGPUImageFillModeStretch;
  [self.view addSubview:filteredVideoView];
//  [filter addTarget:filteredVideoView];
  [self.videoCamera addTarget:filteredVideoView];
  
  [self.videoCamera startCameraCapture];
}

@end
