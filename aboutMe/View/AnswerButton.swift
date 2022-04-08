//
//  AnswerButton.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 28.03.22.
//

import UIKit

class AnswerButton: UIButton {
    private var buttonText: String
    var homeVC = HomeViewController()
    
    var greeting: ((String) -> Void)

    init(buttonText: String, greeting: @escaping (String) -> Void, frame: CGRect = .zero) {
        self.buttonText = buttonText
        self.greeting = greeting
        super.init(frame: frame)
        self.setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
//        heightAnchor.constraint(equalToConstant: 50).isActive = true
        configuration = .answerGreet()
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(buttonText, for: .normal)
        titleLabel?.font = UIFont(name: "Poppins-Regular", size: 30)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func  buttonPressed(sender: UIButton) {
        switch sender.tag {
        case 1:
            greeting("Awesome😆")
        case 2:
            greeting("Feeling Happy☺️")
        case 3:
            greeting("Fantastic🤩")
        default:
            greeting("Ok")
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
