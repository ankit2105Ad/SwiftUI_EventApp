//
//  TabView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 01/05/23.
//


import SwiftUI

struct TabBarView: View {
    
    @EnvironmentObject var tabBar: TabBar

    var body: some View {
        VStack {
            HStack(spacing: 35, content: {
                Button(action: {
                    tabBar.selectedTab = 0
                }, label: {
                    Image("Tab1")
                        .font(.title)
                        .foregroundColor((tabBar.selectedTab == 0) ? (Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1))) : .gray.opacity(0.5))
                        
                })
                
                Button(action: {
                    tabBar.selectedTab = 1
                }, label: {
                        Image("Tab2")
                            .font(.title)
                            .foregroundColor((tabBar.selectedTab == 1) ? (Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1))) : .gray.opacity(0.5))
                })
                
                Button(action: {
                    
                }, label: {
                    Image("CenterButton")
                        .resizable()
                        .frame(width: 95, height: 95)
                        .padding(.vertical, -90)
                })
                
                Button(action: {
                    tabBar.selectedTab = 2
                }, label: {
                    Image("Tab3")
                        .font(.title)
                        .foregroundColor((tabBar.selectedTab == 2) ? (Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1))) : .gray.opacity(0.5))

                })
                
                Button(action: {
                    tabBar.selectedTab = 3
                }, label: {
                    Image("Tab4")
                        .font(.title)
                        .foregroundColor((tabBar.selectedTab == 3) ? (Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1))) : .gray.opacity(0.5))
                })
                
            }) //: HSTACK
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .background(
                Color(.white)
            )
            .shadow(radius: 100.0, x: 0, y: 0)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(TabBar())
    }
}



   
