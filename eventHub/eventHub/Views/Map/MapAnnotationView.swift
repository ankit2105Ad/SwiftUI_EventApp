//
//  MapAnnotationView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    
    var location: Events
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Image("AnnotationBase")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
                .offset(x: -9, y: -16)
        }
        .padding()
        
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var events: [Events] = Bundle.main.decode("Events.json")

    static var previews: some View {
        MapAnnotationView(location: events[0])
    }
}
