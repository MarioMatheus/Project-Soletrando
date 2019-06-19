//
//  LyricsAPIParser.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 19/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import Foundation


class LyricsAPIParser {
    
    func musics(from suggestedLyrics: SuggestedLyrics) -> [Music] {
        var lyrics: [Music] = []
        suggestedLyrics.data.forEach({ suggestedLyricData in
            lyrics.append(Music(id: suggestedLyricData.id,
                                musicName: suggestedLyricData.title,
                                artist: suggestedLyricData.artist.name))
        })
        
        return lyrics
    }
    
    func string(from lyricsData: LyricsData) -> String {
        return lyricsData.lyrics
    }
    
}
