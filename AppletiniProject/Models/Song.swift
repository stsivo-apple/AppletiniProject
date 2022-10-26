//
//  Song.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import Foundation
import SwiftUI

struct Song: Identifiable{
    let title: String
    let album: String
    let artist: String
    var image: String
    var songColor: Color
    
    let id = UUID()
    
    
    static func getSongs() -> [Song] {
        [
            Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow)),
            Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray)),
            Song(title: "Taking A Walk", album: "Life's A Trip", artist: "Trippie Redd", image: "lifesATrip", songColor: Color(UIColor.systemBlue))
        ]
    }

    
}
