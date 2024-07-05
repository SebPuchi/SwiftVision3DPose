//
//  ScannerVC.swift
//  Apple-Frameworks
//
//  Created by Sebastian Pucher on 7/3/24.
//

import Foundation
import UIKit
import AVFoundation



import AVFoundation


protocol VideoFoudationDelegate: AnyObject {}


final class VideoFoundation: UIViewController {
    
    // Create the capture session.
    let captureSession = AVCaptureSession()
    
    init() {
        captureSession.beginConfiguration()
        let videoDevice = detectBackCamera()
        guard
            let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice),
            captureSession.canAddInput(videoDeviceInput)
            else { return }
        captureSession.addInput(videoDeviceInput)
        
        let videoOutput = AVCaptureMovieFileOutput()
        guard captureSession.canAddOutput(videoOutput) else { return }
        captureSession.sessionPreset = .high
        captureSession.addOutput(videoOutput)
        captureSession.commitConfiguration()
        
    }
    


    func detectBackCamera() -> AVCaptureDevice {
        if let device = AVCaptureDevice.default(.builtInDualCamera, for: .video, position: .back) {
            return device
        } else if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
            return device
        } else {
            fatalError("Missing expected back camera device.")
        }
    }

    
    
    var isAuthorized: Bool {
        get async {
            let status = AVCaptureDevice.authorizationStatus(for: .video)
            
            // Determine if the user previously authorized camera access.
            var isAuthorized = status == .authorized
            
            // If the system hasn't determined the user's authorization status,
            // explicitly prompt them for approval.
            if status == .notDetermined {
                isAuthorized = await AVCaptureDevice.requestAccess(for: .video)
            }
            
            return isAuthorized
        }


    }
    
    
    

}
