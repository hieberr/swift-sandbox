//
//  ViewController.swift
//  Working With Audio
//
//  Created by floatingpoint on 8/20/15.
//  Copyright © 2015 HologramPacific. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func playButton(sender: AnyObject) {
        player.play()
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        player.pause()
    }
    
    
    @IBOutlet weak var slider: UISlider!

    
    @IBAction func adjustVolume(sender: AnyObject) {
        player.volume = slider.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let audioPath = NSBundle.mainBundle().pathForResource("alanWatts", ofType: "mp3")!
        do {
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))

        } catch {
            //process error here.
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

