//
//  CardView.swift
//  Hike App
//
//  Created by David Cortes Nieto on 22/4/25.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
       
        imageNumber = randomNumber
    }
    
    var body: some View {
        // MARK: - CARDVIEW
       
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.bold)
                            .font(.system(size: 52))
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
                           
                        Spacer()
                        
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,30)
                
                
                // MARK: - MAIN CONTENT
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: - FOOTER
                
                Button {
                    // ACTION: Generate a random number
                    
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius:0.25, x:1, y:2)
                }
                .buttonStyle(GradientButton())

                
                }
            }  // .CARD
            .frame(width:320, height:570)
        }
    }

#Preview {
    CardView()
}

