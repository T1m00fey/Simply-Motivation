//
//  GreetingView.swift
//  Simply Motivation
//
//  Created by Тимофей Юдин on 11.12.2023.
//

import SwiftUI

import SwiftUI

struct GreetingView: View {
    @State private var text = ""
    
    @FocusState private var isFocused: Bool
    
    private let storageManager = StorageManager.shared
    
    func getColorOfTF() -> Color {
        if isFocused {
            return Color(uiColor: .label)
        } else if !isFocused {
            return .gray
        } else {
            return .red
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(uiColor: .systemGray6)
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("Добро пожаловать!")
                            .font(.title)
                            .padding()
                            .padding(.leading, 10)
                        
                        Spacer()
                    }
                    
                    VStack {
                        TextField("Ваше имя", text: $text)
                            .font(.system(size: 25))
                            .frame(width: 250, height: 30)
                            .focused($isFocused, equals: true)
                            .multilineTextAlignment(.center)
                        
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: 250, height: 3)
                            .foregroundColor(Color(uiColor: isFocused ? .label : .gray))
                    }
                    .padding(.top, 60)
                    
                    HStack {
                        Text("Начать")
                            .font(.system(size: 25))
                        
                        Image(systemName: "checkmark")
                            .resizable()
                            .frame(width: 18, height: 18)
                    }
                    .padding(.top, 170)
                    .padding(.leading, 16)
                    .foregroundStyle(Color(uiColor: text != "" ? .label : .gray))
                    
                    Spacer()
                }
            }
            .onTapGesture {
                isFocused = false
            }
            .onDisappear {
                storageManager.save(name: text)
            }
        }
    }
}

#Preview {
    GreetingView()
}
