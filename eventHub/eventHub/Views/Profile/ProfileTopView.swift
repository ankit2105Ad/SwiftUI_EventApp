//
//  ProfileTopView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 09/05/23.
//

import SwiftUI

struct ProfileTopView: View {
    
    @State var isView:Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            EventsNavBarView(title: "Profile")
            NavigationLink(destination: ProfilePicOpenView(img: "Profile"), isActive: $isView) {
                Button(action: {
                    isView.toggle()
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 96, height: 96)
                    
                })
            }

            Text("Ankit Dubey")
                .font(.title2)
                .fontWeight(.bold)
            
            HStack {
                VStack {
                    Text("350")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Following")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
                .padding()
                Image("Line 59")
                VStack {
                    Text("340")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Followers")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            
            ProfileButtonView()
        }
    }
}


struct ProfileButtonView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("Edit Profile")
                }
            })
        }
        .frame(width: 154 ,height: 50)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 1)), lineWidth: 1.5)
        )
        
    }
}

struct ProfileTopView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTopView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
