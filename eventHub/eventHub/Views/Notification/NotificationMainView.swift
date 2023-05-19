//
//  NotificationMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 11/05/23.
//

import SwiftUI

struct NotificationMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
               EventsNavBarView(title: "Notification")
                    .padding(.horizontal)
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        ForEach(0...10, id: \.self) {_ in
                            NotificationItemView()
                                .padding(.horizontal)
                                .listRowSeparator(.hidden)
                        } //: LOOP
                    }
                    .padding(.vertical)
                    .scrollContentBackground(.hidden)
                    .background(.white)
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct NotificationMainView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationMainView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
