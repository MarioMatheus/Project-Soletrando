//
//  LyricsService.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 13/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import Foundation

class LyricsService {
    
    static let client = LyricsService()
    private init() {}
    
    private let apiURL = "https://api.lyrics.ovh"
    private let suggestsEndpoint = "/suggest"
    private let apiVersion = "/v1"
    
    
    func requestSuggestLyrics(by suggestion: String, completion: @escaping (SuggestedLyrics?) -> Void) {
        guard let formattedSuggestion = suggestion.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return completion(nil)
        }
        
        RestMan.shared.get(url: "\(apiURL)\(suggestsEndpoint)/\(formattedSuggestion)", type: SuggestedLyrics.self) { (suggestedLyrics, error) in
            if error != nil || suggestedLyrics == nil {
                print("Error", error ?? suggestedLyrics ?? "")
                return completion(nil)
            }
            
            DispatchQueue.main.async {
                completion(suggestedLyrics)
            }
        }
    }
    
    
    func requestLyrics(from artist: String, and music: String, completion: @escaping (LyricsData?) -> Void) {
        guard   let formattedArtist = artist.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
                let formattedMusic = music.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return completion(nil)
        }
        
        RestMan.shared.get(url: "\(apiURL)\(apiVersion)/\(formattedArtist)/\(formattedMusic)", type: LyricsData.self) { (lyricsData, error) in
            if error != nil || lyricsData == nil {
                print("Error", error ?? lyricsData ?? "")
                return completion(nil)
            }
            
            DispatchQueue.main.async {
                completion(lyricsData)
            }
        }
    }
    
}
