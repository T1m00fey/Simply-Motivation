//
//  QuoteView.swift
//  Simply Motivation
//
//  Created by Тимофей Юдин on 11.12.2023.
//

import SwiftUI

struct QuoteView: View {
    let quote: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: UIScreen.main.bounds.width - 50,
                    height: UIScreen.main.bounds.height - 300
                )
                .frame(minHeight: 50)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color("startQuoteLinearColor"),
                                Color("endQuoteLinearColor")
                            ]
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .shadow(radius: 5)
            
            VStack {
                Text(quote)
                    .foregroundStyle(Color.white)
                    .frame(
                        width: UIScreen.main.bounds.width - 90,
                        height: UIScreen.main.bounds.height - 340
                    )
                    .font(.system(size: 35))
                    .padding(.top, 20)
                    .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    QuoteView(quote: "dknekfjbahfbhserbfuvesbeursybvuyerbguyberuygferuygberuygberuygberuyb")
}
