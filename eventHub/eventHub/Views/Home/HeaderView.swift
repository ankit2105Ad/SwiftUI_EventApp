//
//  HeaderView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 30/04/23.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    @State var isExplore = false

    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()

            if title != "About" {
                if title == "Interest" {
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.blue)
                                .font(.subheadline)

                            Text("CHANGE")
                                .font(.subheadline)
                                .foregroundColor(.blue)
                        }
                        .frame(width: 100, height: 28)
                        .background(
                            Color(
                                #colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 0.3007036424)
                            )
                            .cornerRadius(14)
                        )
                    })
                } else {
                    NavigationLink(destination: EventsMainView(), isActive: $isExplore) {
                        Button(action: {
                            isExplore.toggle()
                        }, label: {
                            HStack {
                                Text("See All")
                                    .foregroundColor(.gray)
                                Image(systemName: "arrowtriangle.right.fill")
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                            }
                        })
                    }
                }
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Interest")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
