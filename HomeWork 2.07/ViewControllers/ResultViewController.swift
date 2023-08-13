//
//  ResultViewController.swift
//  HomeWork 2.07
//
//  Created by Илья on 12.08.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var resultLabel: [UILabel]!
    
    var resultText: [Answer] = []
    
    private var answers: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        for result in resultText {
            answers.append(result.animal)
        }
        
        resultLabel.first?.text = "Вы - \(showResult(answers)?.rawValue ?? "🦀")"
        resultLabel.last?.text = showResult(answers)?.definition
    }
    
    private func showResult(_ answers: [Animal]) -> Animal? {
        var counts: [Animal: Int] = [:]
        var maxCount = 0
        var mostFrequent: Animal?
        
        for element in answers {
            if let count = counts[element] {
                counts[element] = count + 1
            } else {
                counts[element] = 1
            }
            
            if let count = counts[element], count > maxCount {
                maxCount = count
                mostFrequent = element
            }
            
        }
        
        return mostFrequent
    }
}
