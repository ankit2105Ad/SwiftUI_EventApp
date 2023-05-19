//
//  HomeMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 30/04/23.
//

import SwiftUI

struct HomeMainView: View {
    
    @State var isShowNotifications: Bool = false
    var completion:() ->()
    
    var body: some View {
        ZStack {
            VStack {
                HomeNavView(completion: {
                    completion()
                }, notifications: {
                    isShowNotifications.toggle()
                })
                .frame(height: 20)
                .offset(y: 10)
                ScrollView {
                    VStack {
                        HomeTopView()
                            .offset(y: -60)

                        HeaderView(title: "Upcoming Events")
                            .padding()
                        
                        EventsGridView()
                        
                        HeaderView(title: "Nearby You")
                            .padding()
                        
                        EventsGridView()
                    }
                }
                .background(.white)
                .offset(y: 40)
            }
            .navigationBarBackButtonHidden()
            .background(Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1)))
            
            NavigationLink(destination: NotificationMainView(), isActive: $isShowNotifications) {
                
            }

        }
    }
}

struct HomeMainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMainView(completion: {})
            .environmentObject(TabBar())
    }
}
