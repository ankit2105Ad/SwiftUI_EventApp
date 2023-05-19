//
//  EventsNavBarView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct EventsNavBarView: View {
    @EnvironmentObject var tabBar: TabBar
    var title:String = "Events"
    
    @State var isHome:Bool = false
    var body: some View {
        HStack {
            NavigationLink(destination: MainControlView(), isActive: $isHome) {
                Button(action: {
                    tabBar.selectedTab = 0
                    isHome.toggle()
                }, label: {
                    Image("Back")
                    Text(title)
                        .padding()
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.semibold)
                })
            }
            
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
            })
            Button(action: {}, label: {
                Image("More")
            })

        }
    }
}

struct EventsNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        EventsNavBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
