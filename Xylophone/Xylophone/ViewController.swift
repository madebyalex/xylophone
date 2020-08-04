//
//  ViewController.swift
//  Xylophone
//
//  Created by Alexander on 04.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
       
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
//        print("Sounds/" + title)
    }
}

