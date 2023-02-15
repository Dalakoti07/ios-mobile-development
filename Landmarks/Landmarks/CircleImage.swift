//
//  CircleImage.swift
//  Landmarks
//
//  Created by Saurabh Dalakoti on 15/02/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("nature").clipShape(Circle())
            .overlay{
                Circle().stroke(.black, lineWidth: 4)
            }.shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
