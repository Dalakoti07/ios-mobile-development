//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Saurabh Dalakoti on 15/02/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinates)
                    .ignoresSafeArea(edges: .top)
                    .frame(
                        height: 300
                    )
                
                CircleImage(image: landmark.image)
                    .offset(y : -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack{
                        Text(landmark.name)
                            .font(.title)
                        // using $ because we want reference
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park).font(.subheadline)
                        Spacer()
                        Text(landmark.state).font(.subheadline)
                    }.font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Divider()
                    Text("About \(landmark.name)").font(.title2)
                    Text(landmark.description)
                }.padding()
                
                Spacer()
            }
        }.navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark:
             ModelData().landmarks[0]
        ).environmentObject(
            modelData
        )
    }
}
