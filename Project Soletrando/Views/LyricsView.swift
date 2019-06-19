//
//  LyricsView.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 17/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.

import SwiftUI


struct LyricsView : View {
    
    @ObjectBinding var lyricsViewModel = LyricsViewModel()

    init(music: Music) {
        lyricsViewModel.music = music
    }
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .center) {
                Text(lyricsViewModel.music.musicName)
                    .font(.title)
                Text(lyricsViewModel.music.artist)
                    .font(.subheadline)
                    .color(.secondary)
            }
            .padding(10)
            
            ScrollView {
                Text(lyricsViewModel.lyrics)
                    .lineLimit(0)
                    .padding()
                
            }
        }
        
    }
    
}

#if DEBUG
struct LyricsView_Previews : PreviewProvider {
    static let music: Music = {
        return Music(id: 1, musicName: "Yellow", artist: "Coldplay",
                     lyrics: "Look at the stars\nLook how they shine for you\nAnd everything you do\nYeah, they were all yellow\n\nI came along\nI wrote a song for you\nAnd all the things you do\nAnd it was called \"Yellow\"\n\nSo, then, I took my turn\nOh, what a thing to've done\nAnd it was all yellow\n\nYour skin\nOh, yeah, your skin and bones\nTurn it into something beautiful\nD'you know\nYou know I love you so\nYou know I love you so\n\nI swam across\nI jumped across for you\nOh, what a thing to do\n'Cause you were all yellow\n\nI drew a line\nI drew a line for you\nOh, what a thing to do\nAnd it was all yellow\n\nYour skin\nOh, yeah, your skin and bones\nTurn into something beautiful\nD'you know\nFor you, I'd bleed myself dry\nFor you, I'd bleed myself dry\n\nIt's true\nLook how they shine for you\nLook how they shine for you\nLook how they shine for\nLook how they shine for you\nLook how they shine for you\nLook how they shine\n\nLook at the stars\nLook how they shine for you\nAnd all the things that you do")
    }()
    
    static var previews: some View {
        LyricsView(music: music)
    }
}
#endif
