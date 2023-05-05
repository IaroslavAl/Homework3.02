//
//  Coin.swift
//  Homework3.02
//
//  Created by Iaroslav Beldin on 05.05.2023.
//

struct Coin: Decodable {
    let symbol: String
    let priceChange: String
    let priceChangePercent: String
    let weightedAvgPrice: String
    let prevClosePrice: String
    let lastPrice: String
    let lastQty: String
    let bidPrice: String
    let bidQty: String
    let askPrice: String
    let askQty: String
    let openPrice: String
    let highPrice: String
    let lowPrice: String
    let volume: String
    let quoteVolume: String
    let openTime: Int
    let closeTime: Int
    let firstId: Int
    let lastId: Int
    let count: Int
}
