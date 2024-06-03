//
//  CameraPreview.swift
//  ImageClassificationTest
//
//  Created by Devin Grischow on 6/2/24.
//

import Foundation
import SwiftUI
import AVKit
import UIKit

struct CameraPreview: UIViewRepresentable {
    
    var session: AVCaptureSession
    

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: UIScreen.main.bounds)
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        
        previewLayer.frame = view.frame
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)
        return view
    }
    
    //Declare update but dont do anything with it
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    
    
}
