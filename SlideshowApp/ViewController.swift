//
//  ViewController.swift
//  SlideshowApp
//
//  Created by TECH_ACADEMY on 2020/11/13.
//  Copyright © 2020 tetsushi.miwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // タイマー
    var timer: Timer!
    
    // タイマー用の時間のための変数
    var timer_sec: Int = 0
    
    // UIImageView
    @IBOutlet weak var ramenView: UIImageView!
    
    // tapAction
    @IBAction func tapAction(_ sender: Any) {
        performSegue(withIdentifier: "zoom", sender: nil)
    }
    
    // Outlet接続
    @IBOutlet weak var playAndPauseButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    // UIImageの配列
    var imageArray:[UIImage] = [
    UIImage(named: "img01.jpg")!,
    UIImage(named: "img02.jpg")!,
    UIImage(named: "img03.jpg")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 画像をスライドさせた時
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let zoomViewController: ZoomViewController = segue.destination as! ZoomViewController
        
            zoomViewController.image = imageArray[timer_sec]
        
            if self.timer != nil {
                self.timer.invalidate()   // タイマーを停止する
                self.timer = nil
                
             playAndPauseButton.setTitle("再生", for: .normal)
             nextButton.isEnabled = true
             backButton.isEnabled = true
        }
    }
    
    // "進む"ボタン
    @IBAction func nextButton(_ sender: Any) {
        if timer_sec == 0 {
            timer_sec = 1
        } else if timer_sec == 1 {
            timer_sec = 2
        } else if timer_sec == 2 {
            timer_sec = 0
        }
        ramenView.image = imageArray[timer_sec]
    }
    
    // "戻る"ボタン
    @IBAction func backButton(_ sender: Any) {
        if timer_sec == 0 {
            timer_sec = 2
        } else if timer_sec == 1 {
            timer_sec = 0
        } else if timer_sec == 2 {
            timer_sec = 1
        }
        ramenView.image = imageArray[timer_sec]
    }
    
    // "再生/停止"ボタン
    @IBAction func playAndPauseButton(_ sender: Any) {
        
        if(timer == nil) {
            
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            playAndPauseButton.setTitle("停止", for: .normal)
            nextButton.isEnabled = false
            backButton.isEnabled = false
            
        } else {
            timer.invalidate()
            timer = nil
            
            playAndPauseButton.setTitle("再生", for: .normal)
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }

    }
    
    // timeInterval: 2.0, repeats: true で指定した通り、2.0秒毎に画像がスライド
    @objc func changeImage() {
    
        if (timer_sec == imageArray.count) {
            timer_sec = 0
        }
        
        ramenView.image = imageArray[timer_sec]
        timer_sec += 1
    }
    
    // 遷移先から元の画面に戻ってくる時に必要
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}
