//
//  ObserverClass.swift
//  eventHub
//
//  Created by ankit.dubey03 on 24/04/23.
//

import Foundation
import SwiftUI

class TabBar: ObservableObject {
    @Published var selectedTab: Int = 0
    @State var path = [String]()

}
