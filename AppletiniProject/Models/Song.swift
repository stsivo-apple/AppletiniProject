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
    var songColorStr: String
    
    let id = UUID()
    
    static func getIndex(songs: [Song], title: String) -> Int{
        var index: Int = 0
        for (i,song) in songs.enumerated(){
            if song.title == title {
                index = i
                break
            }
        }
        return index
    }
    
    static func getFeaturedSongs() -> [Song] {
        return [
            Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"),
            Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray), songColorStr: "BLACK"),
            Song(title: "Taking A Walk", album: "Life's A Trip", artist: "Trippie Redd", image: "lifesATrip", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE"),
            Song(title: "Hold On We're Going Home", album: "Nothing Was the Same", artist: "Drake", image: "nothingWasTheSame", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE"),
            Song(title: "Out of Time", album: "Dawn FM", artist: "The Weeknd", image: "dawnFM", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE")
        ]
    }
    
    static func getBlueSongs() -> [Song] {
        return [
            Song(title: "Taking A Walk", album: "Life's A Trip", artist: "Trippie Redd", image: "lifesATrip", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE"),
            Song(title: "Hold On We're Going Home", album: "Nothing Was the Same", artist: "Drake", image: "nothingWasTheSame", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE"),
            Song(title: "Out of Time", album: "Dawn FM", artist: "The Weeknd", image: "dawnFM", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE")
        ]
    }

    static func getYellowSongs() -> [Song] {
        return [
            Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"),
            Song(title: "Blinding Lights", album: "After Hours", artist: "The Weeknd", image: "afterHours", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"),
            Song(title: "Wake Me Up", album: "True", artist: "Avicii", image: "true", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"),
            Song(title: "Happy Now", album: "Happy Now", artist: "Kygo", image: "happyNow", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW")
        ]
    }
    
    static func getPath(songs: [Song]) -> [Song] {
        return [songs[0],songs[1],songs[2]]
    }
    
    static func getBlackSongs() -> [Song] {
        return [
            Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray), songColorStr: "BLACK"),
            Song(title: "Reputation", album: "Twelve Carat Toothache", artist: "Post Malone", image: "twelveCaratToothache", songColor: Color(UIColor.darkGray), songColorStr: "BLACK"),
            Song(title: "As You Are", album: "Beauty Behind The Madness", artist: "The Weeknd", image: "beautyBehindTheMadness", songColor: Color(UIColor.darkGray), songColorStr: "BLACK")
        ]
    }
    
    static func getRedSongs() -> [Song] {
        return [
            Song(title: "Glimpse of Us", album: "Glimpse of Us", artist: "Joji", image: "glimpseOfUs", songColor: Color(UIColor.red), songColorStr: "RED"),
            Song(title: "Africa", album: "Toto IV", artist: "Toto", image: "totoIV", songColor: Color(UIColor.red), songColorStr: "RED"),
            Song(title: "E.T.A.", album: "Changes", artist: "Justin Bieber", image: "changes", songColor: Color(UIColor.red), songColorStr: "RED"),
            Song(title: "7 Days", album: "Born to Do It", artist: "Craig David", image: "bornToDoIt", songColor: Color(UIColor.red), songColorStr: "RED"),
            Song(title: "Heart to Heart", album: "Moon Landing", artist: "James Blunt", image: "moonLanding", songColor: Color(UIColor.red), songColorStr: "RED")
        ]
    }
}
