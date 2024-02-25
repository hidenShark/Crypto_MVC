//
//  Crypto.swift
//  Crypto_MVC
//
//  Created by Илья Акулов on 26.02.2024.
//

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

// MARK: - Extension
extension Crypto {
    static var testData = [
    Crypto(name: "Bitcoin", ticker: "BTC", value: 51736),
    Crypto(name: "Etherium", ticker: "ETH", value: 3108),
    Crypto(name: "Polkadot", ticker: "DOT", value: 8),
    Crypto(name: "Avalanche", ticker: "AVAX", value: 37),
    Crypto(name: "Solana", ticker: "SOL", value: 103),
    Crypto(name: "Uniswap", ticker: "UNI", value: 10)
    ]
}

