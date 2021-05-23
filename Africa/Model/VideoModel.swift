//
//  VideoModel.swift
//  Africa
//
//  Created by Baptiste on 22/05/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let format: String
    
    // Computed Property
    var thumbanail: String {
        "video-\(id)"
    }
}
