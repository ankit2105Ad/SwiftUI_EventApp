//
//  SideMenuOption.swift
//  eventHub
//
//  Created by ankit.dubey03 on 02/05/23.
//

import SwiftUI

struct SideMenuOption: View {
    var icon: String
    var title: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .padding(.horizontal)
                .foregroundColor(.black)
            Text(title)
                .foregroundColor(.black)
        }
    }
}

struct SideMenuOption_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOption(icon: "My Profile", title: "person")
            .environmentObject(TabBar())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
