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
    var songColor: SongColor
    
    let id = UUID()
    
}
