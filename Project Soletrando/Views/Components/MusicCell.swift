//
//  LyricCell.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 13/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI

struct MusicCell : View {
    var music: Music
    
    var body: some View {
        return VStack(alignment: .leading) {
            Text(music.musicName)
            Text(music.artist)
                .font(.subheadline)
                .color(.secondary)
            }
    }
}

#if DEBUG
struct LyricCell_Previews : PreviewProvider {
    static var previews: some View {
        MusicCell(music: Music(id: 0, musicName: "Yellow", artist: "Coldplay"))
    }
}
#endif
