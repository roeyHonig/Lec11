//
//  PlayViewController.swift
//  Lec11
//
//  Created by hackeru on 14 Sivan 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit
import AVKit

class PlayViewController: UIViewController {

    @IBAction func play(_ sender: UIButton) {
        // include a video
        // import AVKit
        // url for the video
        guard let url = Bundle.main.url(forResource: "vid", withExtension: "mp4") else { return  }
        
       
        // instantiate an object of AVPlayer
         let player = AVPlayer(url:url)
        
        // init AVPLayer ViewController
        let VideoVC = AVPlayerViewController()
        
        // videoVc -> Player  // will give us all the coll buttons like play \  stop
        VideoVC.player = player
        
        //present the AVPlayerViewController
        present(VideoVC, animated: true) {
            // code that we will add...
            player.play()
        }
        //
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
