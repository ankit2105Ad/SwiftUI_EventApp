//
//  ContentView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            OnBoardingMainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TabBar())
    }
}
