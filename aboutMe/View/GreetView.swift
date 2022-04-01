//
//  GreetView.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 27.03.22.
//

import UIKit

class GreetView: UIView {
    
    weak var greetingDelegate: Greeting?

    private let helloLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hali Halo!"
        label.font = UIFont(name: "Poppins-Bold", size: 40)
        label.textColor = UIColor(named: "GreenText")
        label.textAlignment = .center
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return label
    }()
    
    private let howAreYouLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "How are you today?"
        label.font = UIFont(name: "Poppins-Regular", size: 35)
        label.textColor = UIColor(named: "GreenText")
        label.textAlignment = .center
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return label
    }()
    
    lazy var awesomeButton: AnswerButton = {
        let button = AnswerButton(buttonText: "Awesome😆", delegate: greetingDelegate)
        button.tag = 1
        return button
    }()
    
    lazy var happyButton: AnswerButton = {
        let button = AnswerButton(buttonText: "Feeling Happy☺️", delegate: greetingDelegate)
        button.tag = 2
        return button
    }()
    
    lazy var fantasticButton: AnswerButton = {
        let button = AnswerButton(buttonText: "Fantastic🤩", delegate: greetingDelegate)
        button.tag = 3
        return button
    }()

    init(greetingDeleagate: Greeting?){
        self.greetingDelegate = greetingDeleagate
        
        super.init(frame: .zero)
        setUpUI()
        
        backgroundColor = UIColor(named: "YellowGreen")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {

        let stackView: UIStackView = {
            let view = UIStackView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.axis = .vertical
            view.alignment = .center
            view.distribution = .fillProportionally
            view.spacing = 40
            return view
        }()
        stackView.addArrangedSubview(awesomeButton)
        stackView.addArrangedSubview(happyButton)
        stackView.addArrangedSubview(fantasticButton)
        
        addSubview(helloLabel)
        addSubview(howAreYouLabel)
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            helloLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            helloLabel.trailingAnchor.constraint(equalTo: trailingAnchor),

            howAreYouLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 10),
            howAreYouLabel.leadingAnchor.constraint(equalTo: helloLabel.leadingAnchor),
            howAreYouLabel.trailingAnchor.constraint(equalTo: helloLabel.trailingAnchor),
            
            stackView.topAnchor.constraint(equalTo: howAreYouLabel.bottomAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: howAreYouLabel.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: howAreYouLabel.trailingAnchor),
        ])
    }
}
