//
//  CustomBackgroundView.swift
//  Hike App
//
//  Created by David Cortes Nieto on 22/4/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
     
        
        ZStack {
            // MARK: - DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            
            // MARK: - LIGHT
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            
            // MARK: - SURFACE
            LinearGradient(colors: [
                .customGreenLight,
                .customGreenMedium
            ],
               startPoint: .top,
               endPoint: .bottom
            )
            .cornerRadius(40)
        }
       
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
