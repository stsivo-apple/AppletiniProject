//
//  GetSongs.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

func getSongs() -> [Song] {
    [
        Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: SongColor(color: "black", sgrad: Color(UIColor.systemGray4), egrad: .black, textColor: .white)),
        Song(title: "Taking A Walk", album: "Life's A Trip", artist: "Trippie Redd", image: "lifesATrip", songColor: SongColor(color: "blue", sgrad: Color(UIColor.systemGray4), egrad: .blue, textColor: .white)),
        Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: SongColor(color: "yellow", sgrad: .orange, egrad: .yellow, textColor: .black))
    ]
}
