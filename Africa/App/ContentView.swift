//
//  ContentView.swift
//  Africa
//
//  Created by Baptiste on 21/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var isGridViewActive: Bool = false
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    let hapitcs = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        
        // MARK: - BODY
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            } //: LINK
                        } //: LOOP
                    } //: LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                } //: LINK
                            } //: LOOP
                        } //: GRID
                        .padding(10)
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                    } //: SCROLL
                } //: CONDITION
            } //: GROUP
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // LIST
                        Button(action: {
                            isGridViewActive = false
                            hapitcs.impactOccurred()
                        }, label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        })
                        
                        // GRID
                        Button(action: {
                            isGridViewActive = true
                            hapitcs.impactOccurred()
                        }, label: {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .accentColor(isGridViewActive ? .accentColor : .primary)
                        })
                    } //: HSTACK
                } //: BUTTON
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
