//
//  VerticalSVWithParent.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 23.03.22.
//

import UIKit

class VerticalSVWithParent: UIStackView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        alignment = .leading
        distribution = .fillProportionally
    }
    
    func addConstraintsWithParentView(parentView: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 10),
            self.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 25),
            self.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -25),
            self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -10),
        ])
    }
    
    func alignmentCenter() {
        alignment = .center
    }
    
    func alignmentTrailing() {
        alignment = .trailing
    }
    
}
