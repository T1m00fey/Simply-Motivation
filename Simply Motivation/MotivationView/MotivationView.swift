//
//  MotivationView.swift
//  Simply Motivation
//
//  Created by Тимофей Юдин on 11.12.2023.
//

import SwiftUI

struct MotivationView: View {
    @StateObject var viewModel = MotivationViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color("startLinearColor"),
                            Color("endLinearColor")
                        ]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text(viewModel.getDate())
                            .font(.title)
                            .fontWeight(.light)
                            .foregroundStyle(Color.white)
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.leading, 20)
                
                QuoteView(quote: "TEST")
            }
        }
    }
}

#Preview {
    MotivationView()
}
