//
//  InviteMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 10/05/23.
//

import SwiftUI

struct InviteMainView: View {
    var body: some View {
        VStack {
            InviteHeaderView()
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0...10, id: \.self) {_ in
                        InviteItemView()
                            .padding(.leading)
                            .listRowSeparator(.hidden)
                    } //: LOOP
                }
                .padding(.vertical)
                .scrollContentBackground(.hidden)
                .background(.white)
            }
        }
        .background(.clear)
    }
}

struct InviteMainView_Previews: PreviewProvider {
    static var previews: some View {
        InviteMainView()
    }
}

struct CustomShapeInvite: Shape {
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 50, height: 50))
    return Path(path.cgPath)
  }
}
