//
//  MapView.swift
//  Landmarks
//
//  Created by Saurabh Dalakoti on 15/02/23.
//

import MapKit
import SwiftUI

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    private func setRegion(_ coordinte: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
        )
    }
}
