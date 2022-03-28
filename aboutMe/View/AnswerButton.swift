//
//  AnswerButton.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 28.03.22.
//

import UIKit

class AnswerButton: UIButton {
    var buttonText: String
    weak var delegate: Greeting?

    init(buttonText: String, delegate: Greeting?, frame: CGRect = .zero) {
        self.buttonText = buttonText
        self.delegate = delegate
        super.init(frame: frame)
        self.setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() {
        widthAnchor.constraint(equalToConstant: 200).isActive = true
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        configuration = .answerGreet()
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(buttonText, for: .normal)
        titleLabel?.font = UIFont(name: "Poppins-Regular", size: 30)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func  buttonPressed(sender: UIButton) {
        if sender.tag == 1 {
            delegate?.greet(answer: "Awesome😆")
        } else if sender.tag == 2 {
            delegate?.greet(answer: "Feeling Happy☺️")
        } else if sender.tag == 3 {
            delegate?.greet(answer: "Fantastic🤩")
        } else {
            delegate?.greet(answer: "Ok")
        }
    }
}

extension UIButton.Configuration {
    static func answerGreet() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = UIColor(named: "GreenText")
        config.baseForegroundColor = .white
        config.titleAlignment = .center
        config.cornerStyle = .medium
        return config
    }
}
