//
//  EventsItemView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct EventsItemView: View {
    var body: some View {
        HStack(spacing: 10) {
            Image("EventsBanner")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 92)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Wed, Apr 28 5:30 PM")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 1)))
                
                Text("Jo Malone London’s Mother’s Day Presents")
                    .font(.callout)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                HStack {
                    Image("LocationPin")
                    Text("Wed, Apr 28 5:30 PM")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                    
                }
            } //: VSTACK
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 3, y: 3)
                .shadow(color: Color(.gray).opacity(0.1), radius: 5, x: -3, y: -3)
        )

    }
}

struct EventsItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventsItemView()
    }
}
