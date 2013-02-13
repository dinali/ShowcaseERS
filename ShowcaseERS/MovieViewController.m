//
//  ERSViewController.m
//  Movie
//
//  Created by Dina Li on 10/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MovieViewController.h"

@implementation MovieViewController

@synthesize moviePlayer;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize logoView = _logoView;
@synthesize youTubeView = _youTubeView;


//- (void) moviePlayBackDidFinish:(NSNotification*)notification {
//    MPMoviePlayerController *player = [notification object];
//    [[NSNotificationCenter defaultCenter]
//     removeObserver:self
//     name:MPMoviePlayerPlaybackDidFinishNotification
//     object:player];
//    
//    if ([player
//         respondsToSelector:@selector(setFullscreen:animated:)])
//    {
//        [player.view removeFromSuperview];
//    }
//}

-(void) embedYouTube{
    
    // NOTE the strange format of the YouTube URL!
   // NSString *video_ID = @"vGOrvTTuwJc";  // ERS Food Prices video on YouTube
    NSString *video_ID = @"NuMSALx7mFs";
    
    NSString *htmlStr = [NSString stringWithFormat:@"<iframe class=\"youtube-player\" type=\"text/html\" width=\"700\" height=\"780\" src=\"http://www.youtube.com/embed/%@\" frameborder=\"0\"></iframe>",video_ID];
    
    [_youTubeView loadHTMLString:htmlStr baseURL:nil];
}

-(void) viewDidLoad{
    [self embedYouTube];
}
@end


