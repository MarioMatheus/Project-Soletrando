//
//  LyricsViewModel.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 17/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI
import Combine

final class LyricsViewModel: ViewModel {
    
    var music = Music(id: 0, musicName: "", artist: "") {
        didSet {
            if music.lyrics.isEmpty {
                requestLyrics(from: music)
            }
        }
    }

    var lyrics: String = "" {
        didSet {
            didChange.send(self)
        }
    }

    func requestLyrics(from music: Music) {
        var notLyrics = true
        LyricsService.client.requestLyrics(from: music.artist, and: music.musicName) { lyrics in
            if let lyrics = lyrics {
                let lyricsParsed = LyricsAPIParser().string(from: lyrics)
                if !lyricsParsed.hasPrefix("Unfortunately, we are not") {
                    self.lyrics = LyricsAPIParser().string(from: lyrics)
                    notLyrics = false
                }
            }
            if notLyrics { self.lyrics = "No lyrics found" }
        }
    }

}
