//
//  ViewController.swift
//  NonInteractiveAVPlayerViewController
//
//  Created by David Cordero on 27.03.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: AVPlayerViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        play(stream: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        view.isUserInteractionEnabled = false
    }
    
    // MARK: - Private
    
    private func play(stream: URL) {
        let asset = AVAsset(url: stream)
        let playetItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playetItem)
        player?.play()
    }
}
