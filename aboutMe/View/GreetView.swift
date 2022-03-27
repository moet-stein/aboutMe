//
//  GreetView.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 27.03.22.
//

import UIKit

class GreetView: UIView {

    let label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "GreetView"
        label.textColor = .white
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        return label
    }()


    init() {
        super.init(frame: .zero)
        setUpUI()
        
        backgroundColor = .systemTeal
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 50),
        ])

    }
}
