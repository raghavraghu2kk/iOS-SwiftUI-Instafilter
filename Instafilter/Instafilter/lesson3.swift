//
//  lesson3.swift
//  Instafilter
//
//  Created by Raghavendra Mirajkar on 18/05/24.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct lesson3: View {
    @State private var image : Image?
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: {
            loadImage()
        })
    }
    
    func loadImage() {
        let inputImage = UIImage(resource: ._3)
        let beginImage = CIImage(image: inputImage)
        
        let context = CIContext()
        let currentFilter = CIFilter.pixellate()
        
        currentFilter.inputImage = beginImage
        
        let amount = 2.0
        let inputKeys = currentFilter.inputKeys
        
        if inputKeys.contains(kCIInputIntensityKey) { currentFilter.setValue(amount, forKey: kCIInputIntensityKey)}
        if inputKeys.contains(kCIInputRadiusKey) { currentFilter.setValue(amount * 200, forKey: kCIInputRadiusKey)}
        if inputKeys.contains(kCIInputScaleKey) { currentFilter.setValue(amount, forKey: kCIInputScaleKey)}
        
        
//        currentFilter.radius = 400
//        currentFilter.center = CGPoint(x: inputImage.size.width/2, y: inputImage.size.height/2)
        
        guard let outputImage = currentFilter.outputImage else { return }
        guard let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else { return }
        
        let uiImage = UIImage(cgImage: cgImage)
        image = Image(uiImage: uiImage)
    }
}

#Preview {
    lesson3()
}
