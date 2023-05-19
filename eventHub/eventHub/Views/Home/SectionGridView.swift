//
//  SectionGridView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 30/04/23.
//


import SwiftUI

let columnSpacing: CGFloat = 5
let rowSpacing: CGFloat = 5
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}


struct SectionGridView: View {
    
    @State var arr:[String] = ["Sports","Music","Food","Art"]
    @State var arrClr:[UIColor] = [#colorLiteral(red: 0.9411764706, green: 0.3882352941, blue: 0.3529411765, alpha: 1), #colorLiteral(red: 0.9607843137, green: 0.5921568627, blue: 0.3843137255, alpha: 1), #colorLiteral(red: 0.1607843137, green: 0.8392156863, blue: 0.5921568627, alpha: 1), #colorLiteral(red: 0.2745098039, green: 0.8039215686, blue: 0.9843137255, alpha: 1)]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(Array(arr.enumerated()), id: \.offset) {index, item in
                    SectionItemView(img: item, clr: arrClr[index])
                }
            }) //: GRID
            .frame(height: 40)
            //.padding(15)
        }) //: SCROLL
    }
}

struct SectionGridView_Previews: PreviewProvider {
    static var previews: some View {
        SectionGridView()
    }
}
