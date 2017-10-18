//
//  ViewController.swift
//  PianoUshtrim
//
//  Created by macbookpro on 16/10/2017.
//  Copyright © 2017 Besnik. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    var notat = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnKey1(_ sender: UIButton) {
        
        var nota = sender.tag
        var fajlli = Bundle.main.url(forResource: notat[nota - 1], withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: fajlli!)
        
        audioPlayer.play()
    }
    

        
        
    
}


