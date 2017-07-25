//
//  InterfaceController.swift
//  AudioRecorder WatchKit Extension
//
//  Created by Salman Qureshi on 25/07/17.
//  Copyright © 2017 Salman Qureshi. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var saveUrl: NSURL?
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let fileManager = FileManager.default
        fileManager.containerURL(forSecurityApplicationGroupIdentifier: "")
        
    }
    
    @IBAction func record() {
        let duration = TimeInterval(10)
        
        let recordOptions = [WKAudioRecorderControllerOptionsMaximumDurationKey: duration]
        
        presentAudioRecorderController(withOutputURL: saveUrl!, preset: .narrowBandSpeech, options: recordOptions) { (saved, error) in
            
            if let err = error {
                
            }
            
            if saved {
                
            }
        }
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
