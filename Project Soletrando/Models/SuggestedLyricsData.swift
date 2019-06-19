//
//  SuggestedLyricsData.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 13/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import Foundation


struct SuggestedLyrics: Codable {
    
    var data: [SuggestedLyricData]
    
}

struct SuggestedLyricData: Codable {
    
    var id: Int
    var title: String
    var artist: ArtistData
    
}

struct ArtistData: Codable {
    
    var id: Int
    var name: String
    
}

struct LyricsData: Codable {
    
    var lyrics: String
    
}
