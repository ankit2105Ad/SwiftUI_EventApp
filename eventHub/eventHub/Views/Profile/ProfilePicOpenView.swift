//
//  ProfilePicOpenView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 09/05/23.
//

import SwiftUI

struct ProfilePicOpenView: View {
    var img = "Profile"
    var body: some View {
        Image(img)
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 500)
    }
}

struct ProfilePicOpenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicOpenView()
    }
}
