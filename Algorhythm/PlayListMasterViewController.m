//
//  ViewController.m
//  Algorhythm
//
//  Created by James Rowe on 2015-07-16.
//  Copyright (c) 2015 James Rowe. All rights reserved.
//

#import "PlayListMasterViewController.h"
#import "PlayListDetailViewController.h"
#import "playlist.h"

@interface PlayListMasterViewController ()

@end

@implementation PlayListMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        
        Playlist *playlist = [[Playlist alloc]initWithIndex:index];
        
        UIImageView *playlistImageView = self.playlistImageViews [index];
        
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        UIImageView *playlistImageView = (UIImageView *) [sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            PlayListDetailViewController *playListDetailController =(PlayListDetailViewController *)segue.destinationViewController;
            
            playListDetailController.playlist = [[Playlist alloc] initWithIndex:index];
        }
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}


@end
