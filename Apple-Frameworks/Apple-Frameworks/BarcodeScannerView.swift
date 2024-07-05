//
//  BarcodeScannerView.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/3/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
               CameraPreviewView()
                
                
            }.navigationTitle("SCANNER")
            
            
        }
        
    }
}

#Preview {
    BarcodeScannerView()
}
