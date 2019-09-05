//
//  Ext_FrequencyVC_ObserveVolumeChanges.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-04.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import AVFoundation


extension FrequencyVC_UI{
    
    private struct Observation {
        static let VolumeKey = "outputVolume"
        static var Context = 0
    }
    
    func observeVolumeChanges(){
        do {
            try audioSession.setActive(true)
            startObservingVolumeChanges()
        } catch {
        }
    }
    
    func startObservingVolumeChanges() {
        audioSession.addObserver(self, forKeyPath: Observation.VolumeKey, options: [.initial, .new], context: &Observation.Context)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if context == &Observation.Context {
            if keyPath == Observation.VolumeKey, let volume = (change?[NSKeyValueChangeKey.newKey] as? NSNumber)?.floatValue {
                volumeLabel.text = "Volume: \(Int(volume*100))%"
            }
        } else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
    func stopObservingVolumeChanges() {
        audioSession.removeObserver(self, forKeyPath: Observation.VolumeKey, context: &Observation.Context)
    }

}
