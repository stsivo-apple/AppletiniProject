//
//  MediaPlayer.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 29/10/22.
//

import Foundation
import AVFoundation

func playMusic() {
    
    let path = Bundle.main.path(forResource: "\(song.title).mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
        mediaplayer = try AVAudioPlayer(contentsOf: url) //creats an AudioPlayer variable using the url of the songus
        mediaplayer?.play()
    } catch {
        
    }
}
