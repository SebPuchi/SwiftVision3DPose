//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/1/24.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        ZStack {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            
        }
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
            VStack {
                
                Image(imageName)
                    .resizable()
                    .frame(width: 90,height: 90)
                Text(name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            
    }
}

#Preview {
    FrameworkGridView()
}
