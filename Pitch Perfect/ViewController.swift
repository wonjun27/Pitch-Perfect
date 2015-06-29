//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Won Jun Bae on 2015-05-17.
//  Copyright (c) 2015 Won Jun Bae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        // Hide the stop button 
        stopButton.hidden = true
        recordButton.enabled = true
    }
    
    @IBAction func recordAudio(sender: UIButton) {
        stopButton.hidden = false
        recordingInProgress.hidden = false
        recordButton.enabled = false
        
        //TODO: Record user voice
        println("in recordAudio")
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}

