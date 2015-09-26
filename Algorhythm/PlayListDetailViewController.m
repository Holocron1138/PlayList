    //
//  PlayListDetailViewController.m
//  Algorhythm
//
//  Created by James Rowe on 2015-07-16.
//  Copyright (c) 2015 James Rowe. All rights reserved.
//

#import "PlayListDetailViewController.h"
#import "Playlist.h"

@interface PlayListDetailViewController ()

@end

@implementation PlayListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
        self.playlistArtist0.text = self.playlist.playlistArtist[0];
        self.playlistArtist1.text = self.playlist.playlistArtist[1];
        self.playlistArtist2.text = self.playlist.playlistArtist[2];
    
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
