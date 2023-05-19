//
//  MainMapView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 08/05/23.
//

import SwiftUI
import MapKit

struct Events: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MainMapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 22.764247, longitude: 75.812095)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 0.00900, longitudeDelta: 0.00800)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [Events] = Bundle.main.decode("Events.json")
    
    // MARK: - BODY
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }) //: MAP
        .ignoresSafeArea()
        .overlay(
            VStack {
                MapTopView()
                    .padding()
                    .background(.clear)
                
                SectionGridView()
                    .padding(.horizontal, 30)

                Spacer()
                
                EventsItemView()
                    .padding(.vertical, 12)
            }
            , alignment: .bottom
        )
    }
}

struct MainMapView_Previews: PreviewProvider {
    static var previews: some View {
        MainMapView()
    }
}

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}

