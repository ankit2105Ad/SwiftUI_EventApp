//
//  ProfileMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 09/05/23.
//

import SwiftUI

struct ProfileMainView: View {
    var body: some View {
        VStack {
            ProfileTopView()
                .padding(.horizontal)
            HeaderView(title: "About")
                .padding()
            Text("Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More")
                .offset(x: 8)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
            HeaderView(title: "Interest")
                .padding()

            Spacer()
        }
    }
}

struct ProfileMainView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMainView()
    }
}
