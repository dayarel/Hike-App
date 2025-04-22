//
//  GradientButtonStyle.swift
//  Hike App
//
//  Created by David Cortes Nieto on 22/4/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.horizontal,30)
            .padding(.vertical)
            .background(
                
                // Conditional Statime with Nil Coalescing
                // Condition ? A : B
                
                configuration.isPressed ?
                // A: When user pressed the button
               
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                // B: When button is not pressed
                
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
