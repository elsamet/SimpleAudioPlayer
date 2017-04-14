//
//  ViewController.swift
//  SimpleAudioPlayer
//
//  Created by Mahmoud Ramadan on 4/14/17.
//  Copyright © 2017 Mahmoud Ramadan. All rights reserved.
//

import UIKit
import  AVFoundation

class ViewController: UIViewController {
    
    var audioplayer:AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            
            let audioPath = Bundle.main.path(forResource: "087", ofType: "mp3")
            let url = URL(fileURLWithPath: audioPath!)
            
            try audioplayer = AVAudioPlayer(contentsOf: url)
            
            
        } catch  {
            print("error")
        }
    }
    
    
    
    @IBAction func playAudio(_ sender: Any) {
        audioplayer.play()
    }
    
    
    
    @IBAction func pauseAudio(_ sender: Any) {
        audioplayer.pause()
    }
    
    
    
    
    @IBAction func replayAudio(_ sender: Any) {
        audioplayer.currentTime=0
        
    }
    
    
    
    
}

