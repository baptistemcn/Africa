//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Baptiste on 23/05/2021.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileNane: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileNane, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileNane, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
