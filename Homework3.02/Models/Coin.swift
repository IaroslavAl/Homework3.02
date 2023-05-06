//
//  Coin.swift
//  Homework3.02
//
//  Created by Iaroslav Beldin on 05.05.2023.
//

//import Foundation

struct Coin: Decodable {
    let symbol: String
    let priceChangePercent: String
    let bidPrice: String
    let askPrice: String
    
    var description: String {
        "Пара: \(symbol), Изменения за 24ч: \(roundUp(priceChangePercent))%, Цена покупки: \(removeZeros(bidPrice)), Цена продажи: \(removeZeros(askPrice))"
    }
    
    private func removeZeros(_ string: String) -> String {
        let parts = string.split(separator: ".")
        if parts.count == 2 {
            let intPart = parts[0]
            var decimalPart = String(parts[1])
            while decimalPart.last == "0" {
                decimalPart = String(decimalPart.dropLast())
            }
            let result = "\(intPart).\(decimalPart)"
            return result
        }
        
        return string
    }
    
    private func roundUp(_ string: String) -> String {
        if let double = Double(string) {
            let result = String(format: "%.2f", double)
            return result
        }
        
        return string
    }
}
