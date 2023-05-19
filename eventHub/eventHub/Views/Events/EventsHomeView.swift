//
//  EventsHomeView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct EventsHomeView: View {
    @State var selected = 0
    @State var isExplore = false
    
    var body: some View {
        NavigationStack {
            VStack {
                EventsNavBarView()
                    .padding()
                
                CustomSegmentedControl(preselectedIndex: $selected, options: ["UPCOMING","PAST EVENTS"])
                    .padding()
                Image("NoEvents")
                    .padding(.vertical, 50)
                List {
                    
                }
                
                
                NavigationLink(destination: EventsMainView(), isActive: $isExplore) {
                    ZStack {
                        Button("Explore Events".uppercased(), action: {
                            isExplore.toggle()
                        })
                        .frame(width: 320, height: 58)
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .background(Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 1)))
                        .cornerRadius(18)
                        Image("rightArrow")
                            .offset(x: 120)
                        
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct EventsHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EventsHomeView()
    }
}
