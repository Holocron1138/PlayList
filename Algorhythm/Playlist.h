//
//  Playlist.h
//  Algorhythm
//
//  Created by James Rowe on 2015-07-17.
//  Copyright (c) 2015 James Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Playlist : NSObject
@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtist;
@property (strong, nonatomic) UIColor *backgroundColor;

- (instancetype)initWithIndex: (NSUInteger) index;


@end
