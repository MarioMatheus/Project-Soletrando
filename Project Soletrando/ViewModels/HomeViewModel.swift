//
//  HomeViewModel.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 13/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI
import Combine

final class HomeViewModel: ViewModel {
    
    var isSearching = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var searchText: String = "" {
        didSet {
            didChange.send(self)
        }
    }
    
    var suggestedMusics: [Music] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    func searchMusics() {
        if searchText.isEmpty { return }
        isSearching = true
        LyricsService.client.requestSuggestLyrics(by: searchText) { suggestedMusics in
            self.isSearching = false
            if let suggestedMusics = suggestedMusics {
                self.suggestedMusics = LyricsAPIParser().musics(from: suggestedMusics)
            }
        }
    }
    
}
