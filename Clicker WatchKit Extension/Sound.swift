//
//  Sound.swift
//  Clicker WatchKit Extension
//
//  Created by Michael Adams on 7/27/21.
//

import AVFoundation
import MediaPlayer

class Sounds {
    
    static var audioPlayer: AVAudioPlayer?
    
    static func playSound(soundfile: String) {
        
        if let path = Bundle.main.path(forResource: soundfile, ofType: nil) {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
                print("Audio played")
            } catch {
                print("error")
            }
        }
    }
}
