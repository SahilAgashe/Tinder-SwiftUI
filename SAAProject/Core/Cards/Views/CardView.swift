//
//  CardView.swift
//  SAAProject
//
//  Created by SAHIL AMRUT AGASHE on 07/08/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var xOffset = CGFloat.zero
    @State private var degrees = Double.zero
    @State private var currentImageIndex = 6
    
    @State private var mockImages = [
        "roman-reings",
        "roman1",
        "roman2",
        "roman3",
        "roman4",
        "roman5",
        "roman6"
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(mockImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: mockImages.count)
                    }
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }

            UserInfoView()
        }
        .printOutput("Body of CardView", #line)
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
        
}

private extension CardView {
    func onDragChanged(_ value: DragGesture.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: DragGesture.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutOff) {
            xOffset = 0
            degrees = 0
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

