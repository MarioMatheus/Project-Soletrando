//
//  HomeView.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 13/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    @ObservedObject var homeViewModel = HomeViewModel()
    @State private var placeHolder: String = ""
    var body: some View {
        
        NavigationView {
        
            VStack(alignment: .center) {
                
                SearchBar(text: $homeViewModel.searchText, placeholder: placeHolder) {
                    self.homeViewModel.searchMusics()
                }
                
                ZStack {
                    if homeViewModel.isSearching {
                        Spacer()
                        Spinner()
                        Spacer()
                    } else {
                        MusicList(musics: homeViewModel.suggestedMusics)
                    }
                    
                }
                
                .navigationBarTitle(Text("Lyricanto"))
            }
            
        }.background(Color.init(.white)).foregroundColor(.white)
        
    }
    
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static let home: HomeView = {
        let home = HomeView()
        home.homeViewModel.suggestedMusics = [
            Music(id: 0, musicName: "Yellow", artist: "Coldplay"),
            Music(id: 1, musicName: "Hymn for the Weekend", artist: "Coldplay")
        ]
        return home
    }()
    
    static var previews: some View {
        home
    }
}
#endif
