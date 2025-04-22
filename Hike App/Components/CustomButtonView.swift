//
//  CustomButtonView.swift
//  Hike App
//
//  Created by David Cortes Nieto on 22/4/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Circle().stroke(
                LinearGradient(
                    colors:[.customGrayLight,.customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                lineWidth: 4
                )
                Image(systemName: "figure.hiking")
                .frame(width:58, height:58)
                .fontWeight(.bold)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
        .frame(width:56, height:56)
        }
    }

#Preview(traits: .sizeThatFitsLayout) {
    CustomButtonView()
        .padding()
}
