//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by TECH_ACADEMY on 2020/11/13.
//  Copyright © 2020 tetsushi.miwa. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {

    @IBOutlet weak var ramenView: UIImageView!
    
    var zoomimage = UIImage(named: "img01.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ramenView.image = zoomimage
    }
    
}
