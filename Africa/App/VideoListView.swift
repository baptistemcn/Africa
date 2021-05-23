//
//  VideoListView.swift
//  Africa
//
//  Created by Baptiste on 21/05/2021.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                } //: LOOP
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Shuffle videos
                        videos.shuffle()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - BODY
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
            .previewDevice("iPhone 11")
    }
}
