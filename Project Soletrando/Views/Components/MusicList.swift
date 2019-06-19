//
//  MusicList.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 19/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI

struct MusicList : View {
    
    @State var musics: [Music]
    
    var body: some View {
        ZStack {
            if musics.isEmpty {
                Spacer()
                HStack(alignment: .center) {
                    Image("search-music")
                        .resizable()
                        .grayscale(0.99)
                        .frame(width: 200, height: 200)
                }
                Spacer()
            } else {
                List(musics) { music in
                    PresentationButton(MusicCell(music: music), destination: LyricsView(music: music))
                }
            }
        }
    }
}

#if DEBUG
struct MusicList_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            MusicList(musics: [])
            MusicList(musics: [
                Music(id: 0, musicName: "Yellow", artist: "Coldplay"),
                Music(id: 0, musicName: "Hymn for the weekend", artist: "Coldplay")
            ])
        }
    }
}
#endif
