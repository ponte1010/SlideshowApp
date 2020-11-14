//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by TECH_ACADEMY on 2020/11/13.
//  Copyright © 2020 tetsushi.miwa. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {
    
    // 変数定義
    var image:UIImage? = nil
    var nextButton: UIButton!
    var backButton: UIButton!
    var playAndPauseButton: UIButton!

    @IBOutlet weak var ramenView: UIImageView!
    
    @IBAction func BackToSlideButton(_ sender: Any) {
        
        if self.playAndPauseButton != nil {
            self.playAndPauseButton.setTitle("再生", for: .normal)
            self.playAndPauseButton = nil
        }
            
        if self.nextButton != nil {
            self.nextButton.isEnabled = true
            self.nextButton = nil
        }
        
        if self.backButton != nil {
            self.backButton.isEnabled = true
            self.backButton = nil
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ramenView.image = image
        
        if self.playAndPauseButton != nil {
            self.playAndPauseButton.setTitle("再生", for: .normal)
            self.playAndPauseButton = nil
        }
                       
        if self.nextButton != nil {
            self.nextButton.isEnabled = true
            self.nextButton = nil
        }
                   
        if self.backButton != nil {
            self.backButton.isEnabled = true
            self.backButton = nil
        }
                   
    }
    
}
