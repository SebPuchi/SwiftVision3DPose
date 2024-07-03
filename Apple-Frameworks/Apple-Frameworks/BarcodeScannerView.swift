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
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                
                
            }.navigationTitle("SCANNER")
            
            
        }
        
    }
}

#Preview {
    BarcodeScannerView()
}
