//
//  InviteHeaderView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 10/05/23.
//

import SwiftUI

struct InviteHeaderView: View {
    @State var searchTxt = ""
    var body: some View {
        VStack(spacing: 50) {
            Text("___")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading) {
                Text("Invite Friend")
                    .padding(.horizontal)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)

                ZStack {
                    TextField("Search", text: $searchTxt)
                        .frame(height: 58)
                        .padding(.horizontal , 20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                        )

                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                        .offset(x: -34)
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct InviteHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        InviteHeaderView()
    }
}
