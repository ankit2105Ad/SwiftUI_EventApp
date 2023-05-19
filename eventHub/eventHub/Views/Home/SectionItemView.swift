//
//  SectionItemView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 30/04/23.
//

import SwiftUI

struct SectionItemView: View {
    
    let img: String
    let clr: UIColor

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 107, height: 40)
                .foregroundColor(Color(clr))
                .cornerRadius(20)
            HStack {
                Image(img)
                    .background(Color(clr))
                Text(img)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
        }
    }
}

struct SectionItemView_Previews: PreviewProvider {
    static var previews: some View {
        SectionItemView(img: "Sports", clr: .red)
    }
}
