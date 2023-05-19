//
//  InviteItemView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 11/05/23.
//

import SwiftUI

struct InviteItemView: View {
    @State var isChecked = false
    var body: some View {
        HStack {
            Image("Profile")
                .resizable()
                .frame(width: 45, height: 45)
                .padding(.trailing, 4)
            VStack(alignment: .leading, spacing: 5) {
                Text("Alex Lee")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("2k Follwers")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button(action: {
                isChecked.toggle()
            }, label: {
                Image(systemName: "checkmark.circle.fill")
                    .font(.title)
                    .foregroundColor(isChecked ? .blue : .gray)
            })
            .padding()
        }
    }
}

struct InviteItemView_Previews: PreviewProvider {
    static var previews: some View {
        InviteItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
