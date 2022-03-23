//
//  GreenPoppinsLabel.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 23.03.22.
//

import UIKit

class GreenPoppinsLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        textColor = UIColor(red: 0.37, green: 0.48, blue: 0.38, alpha: 1.00)
        font = UIFont(name: "Poppins-Regular", size: 15)
    }
    
    
    func changeFontWeightSize(fontWeight: String, size: CGFloat) {
        if fontWeight == "light" {
            font = UIFont(name: "Poppins-Light", size: size)
        } else if fontWeight == "regular" {
            font = UIFont(name: "Poppins-Regular", size: size)
        } else if fontWeight == "bold" {
            font = UIFont(name: "Poppins-Bold", size: size)
        } else {
            font = UIFont(name: "Poppins-Regular", size: size)
        }
    }
}
