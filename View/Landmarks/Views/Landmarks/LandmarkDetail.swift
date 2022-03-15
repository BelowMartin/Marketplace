/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        guard let index = modelData.landmarks.firstIndex(where: { $0.id == landmark.id }) else {
            return 0
        }
        
        return index
//        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            
            landmark.image
                .resizable()
                .frame(width: 400, height: 400)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                .blur(radius: 5)
            

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.298))
                    Spacer()
                    Text(landmark.state)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.298))
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About the order:")
                    .font(.title2)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.514))
                    Spacer()
                Text(landmark.description)
                    .font(.title2)
                    
                    
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct LandmarkDetail_Previews: PreviewProvider {
//    static let modelData = ModelData()
//
//    static var previews: some View {
//        LandmarkDetail(landmark: modelData.landmarks[0])
//            .environmentObject(modelData)
//    }
//}
