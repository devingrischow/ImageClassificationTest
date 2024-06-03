//
//  ContentView.swift
//  ImageClassificationTest
//
//  Created by Devin Grischow on 6/2/24.
//

import SwiftUI

struct ContentView: View {
    
    //Declared in Part 3, may want to include that bit in the First part
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            //Prediction Type
            HStack{
                Text("Prediction: ")
                
                Text(viewModel.prediction)
                //Bottom Of Hstack
            }
            
            //Confidence Level
            HStack{
                
                Text("Confidence: ")
                
                Text(viewModel.confidence)
                
                //Bottom Of Hstack
            }
            
            
            //Camera Preview that the app uses to display previews
            CameraPreview(session: viewModel.session)
                .onAppear{
                    //ENSURE CODE IS RAN IN BACKGROUND
                    DispatchQueue.global().async {
                        self.viewModel.setupSession()
                    }
                    
                }
            
            
            
            
        }
        .background(
            Image(.bluBD)
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ContentView()
}
