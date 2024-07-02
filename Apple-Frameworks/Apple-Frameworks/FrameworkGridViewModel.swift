//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/2/24.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: FrameworkModel? {
        didSet {
            isShowingDetailView = true
        }
        
    }
   
    @Published var isShowingDetailView = false
    
    
    
}
