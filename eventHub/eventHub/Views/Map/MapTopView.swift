//
//  MapTopView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct MapTopView: View {
    @EnvironmentObject var tabBar: TabBar

    @State var searchText = ""
    @State var isHome = false

    var body: some View {
        
        HStack {
            NavigationLink(destination: MainControlView(), isActive: $isHome) {
                Button(action: {
                    tabBar.selectedTab = 0
                    isHome.toggle()
                }, label: {
                    Image("Back")
                })
            }
            .padding()
            TextField("Find for food or restaurant", text: $searchText)
        }
        .background(
            Color.white
                .cornerRadius(14)
        )
        .frame(height: 58)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 0.5)
        )
    }
}

struct MapTopView_Previews: PreviewProvider {
    static var previews: some View {
        MapTopView()
    }
}
