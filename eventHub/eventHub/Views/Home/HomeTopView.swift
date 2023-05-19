//
//  HomeTopView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 28/04/23.
//

import SwiftUI

struct HomeTopView: View {
    @State var searchTxt: String = ""
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding()
                    
                    Text("|")
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: $searchTxt)
                        .padding()
                    Image("FilterButton")
                        .padding()
                    
                } //: Search Bar
                Spacer()
            }
            .frame(height: 150, alignment: .top)
            .background(
                Color(#colorLiteral(red: 0.3644769192, green: 0.3748894334, blue: 0.9416498542, alpha: 1))
                    .clipShape(CustomShape())
            )
            
            SectionGridView()
                .padding(.horizontal, 30)
                .offset(y: 72)
        }
    }
}

struct HomeTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopView()
    }
}
