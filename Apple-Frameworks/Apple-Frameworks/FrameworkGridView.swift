//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/1/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let Columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: Columns) {
            
            ForEach(MockData.frameworks) { framework in
                FrameworkTitleView(framework: framework)
                
            }
           
            
        }
        
            
     
    }
}

struct FrameworkTitleView: View {
    let framework: FrameworkModel
    var body: some View {
            VStack {
                
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90,height: 90)
                Text(framework.name)
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
