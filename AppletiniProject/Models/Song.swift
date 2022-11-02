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
    var infoQuotes: String
    
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
            Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: "This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about"),
            Song(title: "Worlds Collide", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: "Begins a strategic battle that will decide the fate of the universe. It all depends on you"),
            Song(title: "Demacia Rising", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.darkGray), songColorStr: "BLACK", infoQuotes: "Imagine yourself on a battlefield ready to fight for honor as you listen to this melody "),
            Song(title: "PROJECT Yi", album: "League of Legends", artist: "League of Legends", image: "lol5", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: " Imagine yourself chased into a steampunk city to the tune of this song")
        ]
    }
    
    static func getBlueSongs() -> [Song] {
        return [
            Song(title: "Seraphine, The Starry-Eyed Songstress", album: "League of Legends", artist: "League of Legends", image: "lol6", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE", infoQuotes: "Let yourself be lulled by the relaxed voice that allows you to put your thoughts in order"),
            Song(title: "Ivern, the Green Father", album: "Nothing Was the Same", artist: "League of Legends", image: "lol5", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE", infoQuotes: "A melody capable of letting you immerse yourself in the green of the forests and in the middle of the chirping of the birds"),
            Song(title: "Passengers", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE", infoQuotes: "Relax while listening to a mix of city noises in lo-fi sauce")
        ]
    }

    static func getYellowSongs() -> [Song] {
        return [
            Song(title: "Never Gonna Give You Up", album: "League of Legends", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: "This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about"),
            Song(title: "Yuumi, the Magical Cat", album: "League of Legends", artist: "League of Legends", image: "lol8", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: "Let yourself be enveloped by magic and begin to fly in your thoughts"),
            Song(title: "Mochi", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: "Don’t you think this song reminds of something soft but also an explosion of flavor? Exactly a mochi"),
            Song(title: "Home Is Where My Heart Is", album: "League of Legends", artist: "League of Legends", image: "lol5", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: "Start dancing around the house while you play your invisible drums vibing on this song")
        ]
    }
    
    static func getPath(songs: [Song]) -> [Song] {
        return [songs[0],songs[1],songs[2]]
    }
    
    static func getBlackSongs() -> [Song] {
        return [
            Song(title: "Lunar Beasts", album: "League of Legends", artist: "League of Legends", image: "lol8", songColor: Color(UIColor.darkGray), songColorStr: "BLACK", infoQuotes: "Be your own boss and start working out on that bench"),
            Song(title: "Get Jinxed", album: "League of Legends", artist: "League of Legends", image: "lol5", songColor: Color(UIColor.darkGray), songColorStr: "BLACK", infoQuotes: "Start exterminating zombies and get carried away by the heat of this song"),
            Song(title: "Demacia Rising", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.darkGray), songColorStr: "BLACK", infoQuotes: "Imagine yourself on a battlefield ready to fight for honor as you listen to this melody ")
        ]
    }
    
    static func getRedSongs() -> [Song] {
        return [
            Song(title: "Worlds Collide", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: "Begins a strategic battle that will decide the fate of the universe. It all depends on you"),
            Song(title: "Welcome to Planet Urf", album: "League of Legends", artist: "League of Legends", image: "totoIV", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: "Feel the horns of victory ringing for your arrival? Go and prove what you are made of"),
            Song(title: "Sett, The Boss", album: "League of Legends", artist: "League of Legends", image: "lol3", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: "Be your own boss and start working out on that bench"),
            Song(title: "PROJECT Yi", album: "League of Legends", artist: "League of Legends", image: "lol5", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: " Imagine yourself chased into a steampunk city to the tune of this song"),
            Song(title: "Lost Chapter", album: "League of Legends", artist: "Pentakill", image: "lol8", songColor: Color(UIColor.red), songColorStr: "RED", infoQuotes: "Do you miss the 2000s? Let nostalgia return and start to mosh")
        ]
    }
}
