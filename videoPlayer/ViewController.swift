//
//  ViewController.swift
//  videoPlayer
//
//  Created by Chalam, Naga Rani on 4/9/19.
//  Copyright © 2019 Naga Rani, Chalam. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    let avPlayerViewController = AVPlayerViewController()
    var avPlayer:AVPlayer?
    
    
    @IBAction func buttonAction(_ sender: Any) {
       /* plays local videos
        //path of video file
        if let path = Bundle.main.path(forResource: "myToDo", ofType: "mp4"){
            //get content of video
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            //play video using videoplayer
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            //present the video player that contains video
            present(videoPlayer,animated: true,completion: {
                //play video
                video.play()
            })
            
         }
         */
        
        //play the videos from internet
        //AVFoundation and AVKit libraries
        //Trigger the video to play
    let movieURL = NSURL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        if let url = movieURL{
            self.avPlayer = AVPlayer(url: url as URL)
            self.avPlayerViewController.player = self.avPlayer
            present(self.avPlayerViewController, animated: true, completion: {
                self.avPlayerViewController.player?.play()
                
                })

        }
        
        
    
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

