//
//  AboutUsViewController.swift
//  SaiTv
//
//  Created by Sarveshwar Reddy on 14/09/20.
//  Copyright © 2020 Sarveshwar Reddy. All rights reserved.
//

import UIKit
import SafariServices


class AboutUsViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var fbButton: UIButton!
    @IBOutlet weak var youtubeButton: UIButton!

    
    @IBAction func fbButton(_ sender: UIButton) {
        if let url = URL(string: "https://m.facebook.com/Sai-TV-505286129518691/") {
               let config = SFSafariViewController.Configuration()
               config.entersReaderIfAvailable = true

               let vc = SFSafariViewController(url: url, configuration: config)
               present(vc, animated: true)
           }
        
    }
    @IBAction func youtubeButton(_ sender: UIButton) {
         if let url = URL(string: "https://www.youtube.com/watch?v=T4b0kbFXUEM&feature=youtu.be") {
                      let config = SFSafariViewController.Configuration()
                      config.entersReaderIfAvailable = true

                      let vc = SFSafariViewController(url: url, configuration: config)
                      present(vc, animated: true)
                  }
               
           }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbButton.backgroundColor = .clear
        fbButton.layer.cornerRadius = 20
//        fbButton.layer.borderWidth = 1
//        fbButton.layer.borderColor = UIColor.black.cgColor
        
        
        youtubeButton.backgroundColor = .clear
        youtubeButton.layer.cornerRadius = 20
//        youtubeButton.layer.borderWidth = 1
//        youtubeButton.layer.borderColor = UIColor.black.cgColor

        
    }

}
