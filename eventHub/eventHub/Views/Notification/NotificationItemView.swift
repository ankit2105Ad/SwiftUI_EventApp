//
//  NotificationItemView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 11/05/23.
//

import SwiftUI

struct NotificationItemView: View {
    @State var isExpand:Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image("NewProfile")
                    .resizable()
                    .frame(width: 45, height: 45)
                HStack(alignment: .top, spacing: 5) {
                    Text("David Silbia")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    +
                    Text(" Invite Jo Malone London’s Mother’s ")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)

                }
                .padding(.horizontal, 6)
                Spacer()
                Text("Just Now")
                    .font(.caption)
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 0.2352941176, green: 0.2431372549, blue: 0.337254902, alpha: 1)))
            }
            .onTapGesture {
                isExpand.toggle()
            }
            if isExpand {
                HStack(spacing: 15) {
                    Button(action: {
                    }, label: {
                        Text("Reject")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    })
                    .frame(width: 95, height: 36)
                    .background(
                        Color(.white)
                            .cornerRadius(8)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 0.5)
                    )
                    Button(action: {
                    }, label: {
                        Text("Accept")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    })
                    .frame(width: 95, height: 36)
                    .background(
                        Color("AppBg")
                            .cornerRadius(8)
                    )

                }
            }
        }
        .padding(.vertical, 5)
    }
}

struct NotificationItemView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
