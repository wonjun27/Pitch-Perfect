//
//  PlaySoundViewController.swift
//  Pitch Perfect
//
//  Created by Won Jun Bae on 2015-06-27.
//  Copyright (c) 2015 Won Jun Bae. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {

    @IBOutlet weak var rabbitButton: UIButton!
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            println("filePath is loaded")
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            println(filePathUrl)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        } else {
            println("the filePath is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
       
        audioPlayer.play()
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
