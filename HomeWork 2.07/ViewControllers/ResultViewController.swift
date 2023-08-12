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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        for result in resultText {
            var a: Character = " "
            var b = ""
            var num = 0
            
            if a != result.animal.rawValue {
                a = result.animal.rawValue
                
            } else {
                b = result.animal.definition
                print(a)
                print(b)
            }
            
            
        }
    }
    
    
}
