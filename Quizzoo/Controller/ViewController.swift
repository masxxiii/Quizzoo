//
//  ViewController.swift
//  Quizzoo
//
//  Created by Masood Zafar on 05.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //Instance of Main Struct
    var main = Main()
    
    //IBOutlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    //IBActions
    @IBAction func buttonPressed(_ sender: UIButton) {
        animateButton(button: sender)
        main.questionUpdate()
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateView), userInfo: nil, repeats: false)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editButtons(button: buttonA)
        editButtons(button: buttonB)
        editButtons(button: buttonC)
        updateView()
    }
    
    //method to edit the buttons
    func editButtons(button: UIButton) {
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 1.00, green: 0.79, blue: 0.28, alpha: 1.00).cgColor
    }
    
    //method for animating the button
    func animateButton(button: UIButton) {
        
        if (main.checkAnswer(input: button.currentTitle!)) {
            button.backgroundColor = UIColor(red: 0.40, green: 0.87, blue: 0.58, alpha: 1.00)
        }
        else {
            button.backgroundColor = UIColor(red: 0.85, green: 0.23, blue: 0.34, alpha: 1.00)
        }
    }
    
    //method to update the view
    @objc func updateView() {
        scoreLabel.text = "Score: \(main.getScore())";
        questionLabel.text = main.getQuestion()
        progressBar.progress = main.getProgress()
        buttonA.setTitle(main.getChoiceA(), for: .normal)
        buttonB.setTitle(main.getChoiceB(), for: .normal)
        buttonC.setTitle(main.getChoiceC(), for: .normal)
        buttonA.backgroundColor = UIColor.clear
        buttonB.backgroundColor = UIColor.clear
        buttonC.backgroundColor = UIColor.clear
    }

}
