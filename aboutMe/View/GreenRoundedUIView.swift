//
//  YellowRoundedUIView.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 21.03.22.
//

import UIKit

class GreenRoundedUIView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        backgroundColor = UIColor(red: 0.75, green: 0.85, blue: 0.72, alpha: 1.00)
        layer.cornerRadius = 30
    }
    
    func yelloView() {
        backgroundColor = UIColor(red: 0.91, green: 0.92, blue: 0.71, alpha: 1.00)
    }

}
