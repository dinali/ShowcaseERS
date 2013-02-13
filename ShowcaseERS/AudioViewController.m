//
//  AudioViewController.m
//  Spotlight
//
//  Created by Dina Li on 2/6/13.
//  Copyright (c) 2013 USDA ERS. All rights reserved.
//

#import "AudioViewController.h"

@implementation AudioViewController

@synthesize volumeControl = _volumeControl;
@synthesize stopButton = _stopButton;
@synthesize playButton = _playButton;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize audioPlayer = _audioPlayer;


-(IBAction)playAudio:(id)sender
{
    NSURL *url = [[NSURL alloc] init];
    
    // [self setupAV_audioPlayerForURL:url];
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                  pathForResource:@"fooddesertPodcast"
                                  ofType:@"mp3"]];
    
    NSError *error;
    _audioPlayer = [[AVAudioPlayer alloc]
                    initWithContentsOfURL:url
                    error:&error];
    _audioPlayer.numberOfLoops = 1;
    
    if (error)
    {
        NSLog(@"Error in _audioPlayer: %@",
              [error localizedDescription]);
    } else {
        _audioPlayer.delegate = self;
        @try {
            [_audioPlayer prepareToPlay];
        }
        @catch (NSException *exception) {
            NSLog(@"exception prepareToPlay = %@", exception);
        }
        @finally {
            _audioPlayer = nil;
        }
    }
    [_audioPlayer prepareToPlay];
    [_audioPlayer play];
}

-(IBAction)stopAudio
{
    [_audioPlayer stop];
}
-(IBAction)adjustVolume
{
    if (_audioPlayer != nil)
    {
        _audioPlayer.volume = volumeControl.value;
    }
}


-(void)viewWillAppear:(BOOL)animated{
    _descriptionLabel.numberOfLines = 4;
    //  _descriptionLabel.lineBreakMode = UILineBreakModeWordWrap;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"HELLO");
}


-(void)viewDidUnload
{
    self.volumeControl = nil;
}

-(void)_audioPlayerDidFinishPlaying:
(AVAudioPlayer *)_audioPlayer successfully:(BOOL)flag
{
}

-(void)_audioPlayerDecodeErrorDidOccur:
(AVAudioPlayer *)_audioPlayer error:(NSError *)error
{
    if (error)
    {
        NSLog(@"Error in _audioPlayer _audioPlayerDecodeError: %@",
              [error localizedDescription]);
    }
}

@end
