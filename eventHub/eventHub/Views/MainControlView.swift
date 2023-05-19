//
//  MainControlView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct MainControlView: View {
    @EnvironmentObject var tabBar: TabBar

    @State var isHideTab:Bool = false
    @State var isShowSideMenu: Bool = false

    var body: some View {
        ZStack {
            VStack {
                if tabBar.selectedTab == 0 {
                    HomeMainView(completion: {
                        isShowSideMenu.toggle()
                    })
                    
                } else if tabBar.selectedTab == 1 {
                    EventsHomeView()
                }
                else if tabBar.selectedTab == 2 {
                    MainMapView()
                }
                else if tabBar.selectedTab == 3 {
                    ProfileMainView()
                }
                else {
                }
                if !isHideTab && tabBar.selectedTab == 0 {
                    TabBarView()
                        .offset(y: 30)
                }
            }
            .offset(x: isShowSideMenu ? 300 : 0)
            .navigationBarBackButtonHidden()
            
            if isShowSideMenu {
                SideMenuMainView()
            }

        }
    }
}

struct MainControlView_Previews: PreviewProvider {
    static var previews: some View {
        MainControlView()
            .environmentObject(TabBar())
        
    }
}
