//
//  ImageScrollingOverlay.swift
//  SAAProject
//
//  Created by SAHIL AMRUT AGASHE on 20/08/24.
//

import SwiftUI

private let kDebugImageScrollingOverlay = "DEBUG ImageScrollingOverlay"
struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                   updateImageIndex(increment: false)
                    print(kDebugImageScrollingOverlay , "Image index =>", currentImageIndex)
                }
            
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                    print(kDebugImageScrollingOverlay , "Image index =>", currentImageIndex)
                }
        }
        .foregroundStyle(.white.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndexWithLooping(increment: Bool) {
        if increment {
            currentImageIndex = (currentImageIndex + 1) % imageCount
        } else {
            let t = currentImageIndex - 1
            currentImageIndex = (t < 0 ? (t + 7) : t) % imageCount
        }
    }
    
    func updateImageIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < imageCount - 1 else { return }
            currentImageIndex = currentImageIndex + 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex = currentImageIndex - 1
        }
    }
}

struct ImageScrollingOverlay_Previews: PreviewProvider {
    static var previews: some View {
        ImageScrollingOverlay(currentImageIndex: Binding<Int>.constant(1), imageCount: 5)
    }
}
