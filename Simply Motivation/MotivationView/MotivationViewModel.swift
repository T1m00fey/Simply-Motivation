//
//  MotivationViewModel.swift
//  Simply Motivation
//
//  Created by Тимофей Юдин on 11.12.2023.
//

import Foundation

final class MotivationViewModel: ObservableObject {
    func getDate() -> String {
        let date = Date()
        
        let calendar = Calendar.current
        let stringDay = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        
        var stringMonth = ""
        
        switch month {
        case 1:
            stringMonth = "января"
        case 2:
            stringMonth = "февраля"
        case 3:
            stringMonth = "марта"
        case 4:
            stringMonth = "апреля"
        case 5:
            stringMonth = "мая"
        case 6:
            stringMonth = "июня"
        case 7:
            stringMonth = "июля"
        case 8:
            stringMonth = "августа"
        case 9:
            stringMonth = "сентября"
        case 10:
            stringMonth = "октября"
        case 11:
            stringMonth = "ноября"
        default:
            stringMonth = "декабря"
        }
        
        return "\(stringDay) \(stringMonth)"
    }
}
