//
//  ViewController.swift
//  Crypto_MVC
//
//  Created by Илья Акулов on 26.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    private var count = 0
    private var testData: [Crypto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
    }

    // MARK: - Action
    @IBAction func buttonPressed(_ sender: UIButton) {
        displayData(i: getRandomount())
    }
    
    // MARK: - Method

    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: [Crypto]) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }
    
    func getRandomount() -> Int {
        let randomCount = Int.random(in: 0 ..< testData.count)
        return randomCount
    }
}

