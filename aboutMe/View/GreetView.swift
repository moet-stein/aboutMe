//
//  GreetView.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 27.03.22.
//

import UIKit

class GreetView: UIView {
    
    weak var greetingDelegate: Greeting?

    let helloLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hali Halo!"
        label.font = UIFont(name: "Poppins-Bold", size: 40)
        label.textColor = UIColor(named: "GreenText")
        label.textAlignment = .center
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return label
    }()
    
    let howAreYouLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "How are you today?"
        label.font = UIFont(name: "Poppins-Regular", size: 35)
        label.textColor = UIColor(named: "GreenText")
        label.textAlignment = .center
//        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return label
    }()
    
    let awesomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("😆 Awesome", for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 30)
        button.addTarget(self, action: #selector(answerPressed), for: .touchUpInside)
        return button
    }()
    
//    let awesomeButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("😌", for: .normal)
//        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 100)
//        return button
//    }()

    @objc func answerPressed() {
        greetingDelegate?.greet(answer: "awesome")
    }

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
        
        let verticalSV: VerticalSVWithParent = {
           let stackView = VerticalSVWithParent()
            stackView.alignmentCenter()
            return stackView
        }()
        
        addSubview(verticalSV)
        verticalSV.addConstraintsWithParentView(parentView: self)
        
        verticalSV.addArrangedSubview(helloLabel)
        verticalSV.addArrangedSubview(howAreYouLabel)
        verticalSV.addArrangedSubview(awesomeButton)
    }
}
