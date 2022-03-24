//
//  ImageLabel.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 21.03.22.
//

import UIKit

class ImageLabelLinkView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let horizontalStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()
    
    
    
    convenience init(text: String, textSize: CGFloat = 13, imageName: String?, imageSize: CGFloat?, link: String, textColor: UIColor = UIColor(red: 0.27, green: 0.29, blue: 0.25, alpha: 1.00)) {
        self.init(frame: .zero)
        
        addSubview(horizontalStackView)
        
        let textView: UITextView = {
            let textView = UITextView()
            textView.translatesAutoresizingMaskIntoConstraints = false	
            textView.isSelectable = true
            textView.isEditable = false
            textView.isUserInteractionEnabled = false
            let attributedString = NSMutableAttributedString(string: text)
            let range = NSString(string: text).range(of: text)
            attributedString.addAttribute(NSAttributedString.Key.link, value: link, range: range)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: range)
            textView.attributedText = attributedString
            
            textView.tintColor = textColor
            textView.font = UIFont(name: "Poppins-Light", size: textSize)
            textView.backgroundColor = UIColor(named: "LightGreen")
            
            textView.widthAnchor.constraint(equalToConstant: 230).isActive = true
            textView.heightAnchor.constraint(equalToConstant: 30).isActive = true
            
            return textView
        }()
        
        if imageName != nil && imageName != nil {
            let image: UIImageView = {
                let image = UIImage(named: imageName!)
                let imageView = UIImageView(image: image!)
                imageView.translatesAutoresizingMaskIntoConstraints = false
                imageView.widthAnchor.constraint(equalToConstant: imageSize!).isActive = true
                imageView.heightAnchor.constraint(equalToConstant: imageSize!).isActive = true
                return imageView
            }()
            
            horizontalStackView.addArrangedSubview(image)
        }

        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: topAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        
        horizontalStackView.addArrangedSubview(textView)
    }
}
