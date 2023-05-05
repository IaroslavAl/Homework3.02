//
//  ViewController.swift
//  Homework3.02
//
//  Created by Iaroslav Beldin on 05.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCoins()
    }
}

// MARK: - Networking
extension ViewController {
    
    private func fetchCoins() {
        URLSession.shared.dataTask(with: URL(string: "https://data.binance.com/api/v3/ticker/24hr")!) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let decoder = JSONDecoder()
            let coins = try? decoder.decode([Coin].self, from: data)
            print(coins?.first ?? "error in fetching coins")
        }.resume()
    }
}
