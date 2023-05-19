//
//  EventsGridView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 30/04/23.
//

import SwiftUI

struct EventsGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(0...4, id: \.self) {_ in
                    NavigationLink(destination: EventDetailsMainView()) {
                        EventItemView()
                    }
                }
            }) //: GRID
            //.padding(15)
        }) //: SCROLL
    }
}

struct EventsGridView_Previews: PreviewProvider {
    static var previews: some View {
        EventsGridView()
    }
}
