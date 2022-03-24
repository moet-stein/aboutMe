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
        backgroundColor = UIColor(named: "LightGreen")
        layer.cornerRadius = 30
    }
    
    func yelloView() {
        backgroundColor = UIColor(named: "YellowGreen")
    }

}
