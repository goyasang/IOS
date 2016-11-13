//
//  DemoVideo.m
//  Project
//
//  Created by Xcode User on 2016-11-08.
//  Copyright © 2016 Xcode Userproject. All rights reserved.
//

#import "DemoVideo.h"

@interface DemoVideo ()

@end

@implementation DemoVideo
@synthesize playerViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)Video:(id)sender
{
    [self Video];

}
-(void) Video
{
NSString *stringVideoName = @"Video.mp4";
NSString *stringVideoPath = [[NSBundle mainBundle] pathForResource:stringVideoName ofType:nil];
NSAssert(stringVideoPath, @"Expected not nil video file");

NSURL *urlVideoFile = [NSURL fileURLWithPath:stringVideoPath];
NSAssert(urlVideoFile, @"Expected not nil video url");

playerViewController = [[AVPlayerViewController alloc] init];
playerViewController.player = [AVPlayer playerWithURL:urlVideoFile];
playerViewController.view.frame = self.view.bounds;
playerViewController.showsPlaybackControls = YES;

[self.view addSubview:playerViewController.view];
self.view.autoresizesSubviews = YES;

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
