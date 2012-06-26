//
//  ViewController.m
//  More Reasons Not To Hate Yourself
//
//  Created by Dylan Elliott on 21/06/12.
//  Copyright (c) 2012 Tigerspike. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    songPlayer = [[AVAudioPlayer alloc] initWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp3"]] error:nil];
    songPlayer.volume = 0.0;
    [songPlayer play];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)songButtonTapped:(UIButton *)sender {
    
    if (playingSong != sender.tag) {
        NSData *songData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%d", sender.tag] ofType:@"mp3"]];
        
        NSError *error = nil;
        
        songPlayer = [[AVAudioPlayer alloc] initWithData:songData error:&error];
        songPlayer.volume = 1.0;
        [songPlayer play];
        playingSong = sender.tag;
    } else {
        [songPlayer pause];
        playingSong = 0;
    }
    
}

- (IBAction)facebookButtonTapped:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"External Link" message:@"This website will open in Safari. Continue?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];
    
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/Juniorwalkermusic"]];
    }
}

@end
