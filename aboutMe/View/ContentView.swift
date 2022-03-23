//
//  ContentView.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 21.03.22.
//

import UIKit

class ContentView: UIView {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor(red: 0.95, green: 0.97, blue: 0.91, alpha: 1.00)
        return scrollView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - TopView
    let topView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.89, green: 0.76, blue: 0.73, alpha: 1.00)
        view.layer.cornerRadius = 20
        return view
        
    }()
    
    
    let imageView: UIImageView = {
        let image = UIImage(named: "myImage")
        let myImageView:UIImageView = UIImageView()
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myImageView.image = image
        return myImageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Moe Steinmueller"
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.font = UIFont(name: "Poppins-Bold", size: 20)
        label.textColor = UIColor(red: 0.37, green: 0.48, blue: 0.38, alpha: 1.00)
        return label
    }()
    
    let pronounLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "She/Her"
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.font = UIFont(name: "Poppins-Light", size: 13)
        label.textColor = UIColor(red: 0.37, green: 0.48, blue: 0.38, alpha: 1.00)
        return label
    }()
    
    let introLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
        I am an iOS Engineer who loves to learn new things and enjoys building interfaces with a strong eye on a design!
        As I've been learning Swift and iOS development, I also started interested in Computer Science topics.
        My aim is to become a great iOS developer who can implement Data Structure and Algorithms effectively with clean code for beautiful interfaces!
        """
        label.font = UIFont(name: "Poppins-Regular", size: 13)
        label.textColor = UIColor(red: 0.37, green: 0.48, blue: 0.38, alpha: 1.00)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        label.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return label
    }()

    
    // MARK: - snsInfoView
    
    let snsInfoView: GreenRoundedUIView = {
        let view = GreenRoundedUIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let appleLine: GreenPoppinsLabel = {
       let label = GreenPoppinsLabel()
        label.text = "                   "
        return label
    }()
    
    let locationLabel: GreenPoppinsLabel = {
        let label = GreenPoppinsLabel()
        label.setText("Berlin, Germany", prependedBySymbolNameed: "mappin.and.ellipse")
        return label
    }()
    
    let twitterLabel: ImageLabelLinkView = {
        let imageLabel = ImageLabelLinkView(text: "@SteinieM", imageName: "twitterLogo", imageSize: 25, link: "http://twitter.com/steiniem")
        return imageLabel
    }()
    
    let linkedInLabel: ImageLabelLinkView = {
        let imageLabel = ImageLabelLinkView(text: "linkedin.com/in/moe-steinmueller", imageName: "linkedInLogo", imageSize: 25, link: "https://www.linkedin.com/in/moesteinmueller/")
        return imageLabel
    }()
    
    let githubLabel: ImageLabelLinkView = {
        let imageLabel = ImageLabelLinkView(text: "GitHub", imageName: "githubLogo", imageSize: 25, link: "https://github.com/moet-stein")
        return imageLabel
    }()
    
//    let notionLabel: ImageLabelLinkView = {
//        let imageLabel = ImageLabelLinkView(text: "notion.moet-stein", imageName: "notionLogo", imageSize: 25, link: "https://www.notion.so/1ac7da06b1024e0c9ea144df8e4abc40?v=39875f870c914acc91808216de84591d")
//        return imageLabel
//    }()
    
    // MARK: - moreInfoView
    let moreInfoView: GreenRoundedUIView = {
        let view = GreenRoundedUIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let hobbyLabel: GreenPoppinsLabel = {
        let label = GreenPoppinsLabel()
        label.text = "❤️ Yoga, Grammar, Trip"
        return label
    }()
    
    let languageLabel: GreenPoppinsLabel = {
       let label = GreenPoppinsLabel()
        label.text = "🗣️ 🇯🇵🇺🇸🇩🇪🇰🇷"
        return label
    }()
    
    let favPlaceLabel: GreenPoppinsLabel = {
        let label = GreenPoppinsLabel()
        label.text = "📍💖 Hanauma Bay, Koko Crater"
        return label
    }()
    
    
    // MARK: - WhyIOSView
    
    let whyIosView: GreenRoundedUIView = {
        let view = GreenRoundedUIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.yelloView()
        return view
    }()
    
    let whyIosTitle: GreenPoppinsLabel = {
        let label = GreenPoppinsLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.changeFontWeightSize(fontWeight: "bold", size: 15)
        label.text = "I like iOS development because.."
        label.numberOfLines = 0
        label.heightAnchor.constraint(equalToConstant: 35).isActive = true
        return label
    }()
    
    let whyIosContenLabel: GreenPoppinsLabel = {
        let label = GreenPoppinsLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
            I fell in love with iOS development when I ran my first app on my physical device for the first time!
            I like the iOS interfaces and its possibilities of functionalities that can be implemented by code.
            And Swift is my favorite language!
            I love that learning iOS development is a never-ending journey, and it's just getting more exciting as I gain knowledge!
            """
        label.changeFontWeightSize(fontWeight: "light", size: 13)
        label.numberOfLines = 18
        return label
    }()
    
    // MARK: - custom greeting button
    
    let greetingButton: UIButton = {
      let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.89, green: 0.76, blue: 0.73, alpha: 1.00)
        button.setTitle("Let's say Hi!", for: .normal)
        button.tintColor = UIColor(red: 0.37, green: 0.48, blue: 0.38, alpha: 1.00)
        button.titleLabel?.font = UIFont(name: "Poppins-Bold", size: 20)
        button.layer.cornerRadius = 5
        return button
    }()
    
    private func setUpUI() {
        setOuterViews()
        setViewsInsideTopView()
        setInsideSnsView()
        setInsideMoreInfoView()
        setInsideWhyIosView()
    }
    
    private func setOuterViews() {
        scrollView.addSubview(topView)
        scrollView.addSubview(snsInfoView)
        scrollView.addSubview(moreInfoView)
        scrollView.addSubview(whyIosView)
        scrollView.addSubview(greetingButton)
        
        NSLayoutConstraint.activate([
            topView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            topView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50),
            topView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30),
            topView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -30),
            topView.heightAnchor.constraint(equalToConstant: 400),


            snsInfoView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20),
            snsInfoView.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            snsInfoView.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            snsInfoView.heightAnchor.constraint(equalToConstant: 180),

            moreInfoView.topAnchor.constraint(equalTo: snsInfoView.bottomAnchor, constant: 20),
            moreInfoView.leadingAnchor.constraint(equalTo: snsInfoView.leadingAnchor),
            moreInfoView.trailingAnchor.constraint(equalTo: snsInfoView.trailingAnchor),
            moreInfoView.heightAnchor.constraint(equalToConstant: 130),

            whyIosView.topAnchor.constraint(equalTo: moreInfoView.bottomAnchor, constant: 20),
            whyIosView.leadingAnchor.constraint(equalTo: moreInfoView.leadingAnchor),
            whyIosView.trailingAnchor.constraint(equalTo: moreInfoView.trailingAnchor),
            whyIosView.heightAnchor.constraint(equalToConstant: 250),
            
            
            greetingButton.topAnchor.constraint(equalTo: whyIosView.bottomAnchor, constant: 20),
            greetingButton.leadingAnchor.constraint(equalTo: whyIosView.leadingAnchor, constant: 40),
            greetingButton.trailingAnchor.constraint(equalTo: whyIosView.trailingAnchor, constant: -40),
            greetingButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            greetingButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    private func setViewsInsideTopView() {
        
        let verticalStackView : VerticalSVWithParent = {
            let stackView = VerticalSVWithParent()
            stackView.alignmentCenter()
            return stackView
        }()
        
        topView.addSubview(verticalStackView)
        
        verticalStackView.addConstraintsWithParentView(parentView: topView)
    
        verticalStackView.addArrangedSubview(imageView)
        verticalStackView.addArrangedSubview(nameLabel)
        verticalStackView.addArrangedSubview(pronounLabel)
        verticalStackView.addArrangedSubview(introLabel)
    }
    
    
    private func setInsideSnsView() {
        let verticalStackView : VerticalSVWithParent = {
            let stackView = VerticalSVWithParent()
            return stackView
        }()
        
        snsInfoView.addSubview(verticalStackView)
        
        verticalStackView.addConstraintsWithParentView(parentView: snsInfoView)
        
        verticalStackView.addArrangedSubview(locationLabel)
        verticalStackView.addArrangedSubview(appleLine)
        verticalStackView.addArrangedSubview(twitterLabel)
        verticalStackView.addArrangedSubview(linkedInLabel)
        verticalStackView.addArrangedSubview(githubLabel)
//        verticalStackView.addArrangedSubview(notionLabel)
    }
    
    private func setInsideMoreInfoView() {
        let verticalStackView : VerticalSVWithParent = {
            let stackView = VerticalSVWithParent()
            return stackView
        }()
        
        moreInfoView.addSubview(verticalStackView)
        
        verticalStackView.addConstraintsWithParentView(parentView: moreInfoView)
        
        verticalStackView.addArrangedSubview(hobbyLabel)
        verticalStackView.addArrangedSubview(languageLabel)
        verticalStackView.addArrangedSubview(favPlaceLabel)
    }
    
    private func setInsideWhyIosView() {
        let verticalStackView : VerticalSVWithParent = {
            let stackView = VerticalSVWithParent()
            return stackView
        }()
        
        whyIosView.addSubview(verticalStackView)
        
        verticalStackView.addConstraintsWithParentView(parentView: whyIosView)
        
        verticalStackView.addArrangedSubview(whyIosTitle)
        verticalStackView.addArrangedSubview(whyIosContenLabel)
    }
    
   
}

extension UILabel {
    func setText(_ text: String, prependedBySymbolNameed symbolSystemName: String, font: UIFont? = nil) {
        if #available(iOS 13.0, *) {
            if let font = font { self.font = font }
            let symbolConfiguration = UIImage.SymbolConfiguration(font: self.font)
            let symbolImage = UIImage(systemName: symbolSystemName, withConfiguration: symbolConfiguration)?.withRenderingMode(.alwaysTemplate)
            let symbolTextAttachment = NSTextAttachment()
            symbolTextAttachment.image = symbolImage
    
            let attributedText = NSMutableAttributedString()
            attributedText.append(NSAttributedString(attachment: symbolTextAttachment))
            attributedText.append(NSAttributedString(string: " " + text))
            self.attributedText = attributedText
        } else {
            self.text = text // fallback
        }
    }
    
}

