//
//  ViewController.swift
//  SlideshowApp
//
//  Created by TECH_ACADEMY on 2020/11/13.
//  Copyright © 2020 tetsushi.miwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ramenView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // segueを使って戻ってきた時に呼ばれる
    }
    
    // "進む"ボタン
    @IBAction func go(_ sender: Any) {
    }
    
    // "戻る"ボタン
    @IBAction func back(_ sender: Any) {
    }
    
    @IBAction func playAndPause(_ sender: Any) {
    }
    
}
