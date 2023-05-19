//
//  HomeNavView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 28/04/23.
//

import SwiftUI

struct HomeNavView: View {
    
    var completion:() ->()
    var notifications:() ->()

    var body: some View {
        HStack {
            Button(action: {
                completion()
            }, label: {
                Image(systemName: "square.fill.text.grid.1x2")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: BUTTON
            
            Spacer()
            VStack {
                Button(action: {
                    
                }, label: {
                    HStack {
                        Text("Current Location")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        Image(systemName: "arrowtriangle.down.fill")
                            .foregroundColor(.white)
                            .frame(width: 10, height: 10)
                    }
                })
                
                Text("New Delhi")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Button(action: {
                notifications()
            }, label: {
                ZStack {
                    Image("NavBarIcon")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }) //: BUTTON
        }
        .padding()
        .background(Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1)))
        //: HSTACK
    }
}

struct HomeNavView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavView(completion: {}, notifications: {})
    }
}
