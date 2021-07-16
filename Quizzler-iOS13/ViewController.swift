//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["A slug's blood is green.", "True"],
        ["Approximately one quarter of human bones are in the feet.", "True"],
        ["The total surface area of two human lungs is approximately 70 square metres.", "True"],
        ["In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", "True"],
        ["In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()

    }

    @IBAction func answerButtonTapped(_ sender: UIButton) {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            setupUI()
        }

    }
    
    func setupUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

