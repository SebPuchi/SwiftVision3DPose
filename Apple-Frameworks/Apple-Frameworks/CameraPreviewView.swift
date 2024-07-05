//
//  CameraPreviewView.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/3/24.
//

import SwiftUI
import AVFoundation

class CameraPreviewView: UIView {
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    /// Convenience wrapper to get layer as its statically known type.
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
   
}

#Preview {
    CameraPreviewView()
}

