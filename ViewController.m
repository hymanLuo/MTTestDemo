//
//  ViewController.m
//  MTTestDemo
//
//  Created by cheng luo on 2018/12/10.
//  Copyright © 2018年 homeSalf. All rights reserved.
//

#import "ViewController.h"

#import <MediaPlayer/MPVolumeView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getVolume];
}

- (float) getVolume
{
    MPVolumeView * slide=[MPVolumeView new];
    UISlider * volumeViewSlider;
    for(UIView *view in[slide subviews])
    {
        if([[[view class] description] isEqualToString:@"MPVolumeSlider"])
        {
            volumeViewSlider=(UISlider *)view;
        }
    }
    float val=[volumeViewSlider value];
    return val;
}

- (void) setVolume:(float) value
{
//    MPMusicPlayerController*mp=[MPMusicPlayerController applicationMusicPlayer];
//    mp.volume=value;
}



@end
