//
//  SideMenuHeader.swift
//  eventHub
//
//  Created by ankit.dubey03 on 02/05/23.
//

import SwiftUI

struct SideMenuHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Profile")
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
                .clipped()
                .clipShape(Circle())
            Text("Ankit Dubey")
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader()
            .environmentObject(TabBar())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
