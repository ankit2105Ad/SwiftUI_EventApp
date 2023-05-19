//
//  EventsMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct EventsMainView: View {
    
    var body: some View {
        VStack {
            EventsNavBarView()
                .padding(.horizontal)
            
            ScrollView {
                LazyVStack {
                    ForEach(0...4, id: \.self) {_ in
                        EventsItemView()
                            .padding(.vertical, 3)
                            .listRowSeparator(.hidden)
                    } //: LOOP

                }
                .padding(.vertical)
                .scrollContentBackground(.hidden)
                .background(Color.white)

            }
        }
        .background(Color.white)
        .navigationBarBackButtonHidden()
    }
}

struct EventsMainView_Previews: PreviewProvider {
    static var previews: some View {
        EventsMainView()
    }
}
