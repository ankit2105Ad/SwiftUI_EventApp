//
//  EventItemView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 30/04/23.
//

import SwiftUI

struct EventItemView: View {
    var body: some View {
        VStack {
           Image("EventsBanner")
                .resizable()
                .frame(width: 218, height: 131)
            
            VStack(spacing: 5) {
                Text("International Brand Music")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .offset(x: 0)
                    .lineLimit(1)
                    .frame(width: 210)
                HStack(spacing: 50) {
                    ZStack {
                        Image("ProfilePic")
                            .offset(x: 10)
                        Image("ProfilePic")
                            .offset(x: 25)
                        Image("ProfilePic")
                            .offset(x: 40)
                    }
                    
                    Text("+20 Going")
                        .foregroundColor(.blue)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 18)
                HStack {
                    Image("LocationPin")
                    Text("36 Main St Delaware")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .offset(x: 28)

            }

        }
        .frame(width: 260, height: 280)
        .background(.white)
        .shadow(color: Color.black.opacity(0.1), radius: 100, x: 3, y: 3)
        .shadow(color: Color(.gray).opacity(1), radius: 100, x: -3, y: -3)
        .cornerRadius(14)

    }
}

struct EventItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
