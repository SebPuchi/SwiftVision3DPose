//
//  FrameWorkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/1/24.
//

import SwiftUI

struct FrameWorkDetailView: View {
    var framework: FrameworkModel
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button {
                    
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.white)
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Button {
                
                
            }label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundStyle(Color.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
        }
    }
}

