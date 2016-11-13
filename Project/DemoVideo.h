//
//  DemoVideo.h
//  Project
//
//  Created by Xcode User on 2016-11-08.
//  Copyright © 2016 Xcode Userproject. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface DemoVideo : UIViewController

{
    
AVPlayerViewController *playerViewController;
}

@property (nonatomic, retain) AVPlayerViewController *playerViewController;

-(IBAction)Video:(id)sender;

@end
