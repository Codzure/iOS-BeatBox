//
//  ViewController.swift
//  BeatBox
//
//  Created by Leonard Mutugi on 20/05/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }

    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "Duffel Bag", ofType: "mp4") else {
            debugPrint("Duffel Bag.m4v not found")
            return
        }
        
        let player = AVPlayer(url:URL(fileURLWithPath: path))
        let playController = AVPlayerViewController()
        
        playController.player = player
        present(playController, animated: true){
            player.play()
        }
    }
    
    
    private func findVideo(){
        guard let path = Bundle.main.path(forResource: "Duffel Bag", ofType: "m4v") else {
            debugPrint("video.m4v not found")
            return
        }
        
    }
    
}

