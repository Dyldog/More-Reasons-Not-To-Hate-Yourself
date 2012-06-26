//
//  ViewController.h
//  More Reasons Not To Hate Yourself
//
//  Created by Dylan Elliott on 21/06/12.
//  Copyright (c) 2012 Tigerspike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <UIAlertViewDelegate> {
    
    IBOutlet UIButton *teachMeButton;
    IBOutlet UIButton *gravityButton;
    IBOutlet UIButton *carnivoresButton;
    IBOutlet UIButton *fuckButton;
    
    IBOutlet UIButton *playPauseButton;
    
    IBOutlet UIButton *facebookButton;
    
    AVAudioPlayer *songPlayer;
    
    int playingSong;
    
}

@end
