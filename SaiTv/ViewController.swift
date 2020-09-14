//
//  ViewController.swift
//  SaiTv
//
//  Created by Sarveshwar Reddy on 16/04/20.
//  Copyright © 2020 Sarveshwar Reddy. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var liveTvButton: UIButton!
    @IBOutlet weak var raiseFundsButton: UIButton!
    @IBOutlet weak var aboutUsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        liveTvButton.backgroundColor = .clear
        liveTvButton.layer.cornerRadius = 5
        liveTvButton.layer.borderWidth = 1
        liveTvButton.layer.borderColor = UIColor.black.cgColor
        raiseFundsButton.backgroundColor = .clear
        raiseFundsButton.layer.cornerRadius = 5
        raiseFundsButton.layer.borderWidth = 1
        raiseFundsButton.layer.borderColor = UIColor.black.cgColor
        aboutUsButton.backgroundColor = .clear
        aboutUsButton.layer.cornerRadius = 5
        aboutUsButton.layer.borderWidth = 1
        aboutUsButton.layer.borderColor = UIColor.black.cgColor
        
    }

    @IBAction func liveTVButton(_ sender: UIButton) {
      
        guard let url:NSURL = NSURL(string: "http://decode.streamplay.in:1935/srisai/srisai/playlist.m3u8")
            else{
            return
        }
        let player = AVPlayer(url: url as URL)
        let controller = AVPlayerViewController()
        controller.player = player

        present(controller,animated: true){
            player.play()
        }
        
    }
    
    @IBAction func raiseFundsButton(_ sender: UIButton) {
    }
    
    @IBAction func aboutUs(_ sender: UIButton) {
        
        
    }
    
    
    

    
    
    
    
}

