//
//  GreetViewController.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 27.03.22.
//

import UIKit

protocol Greeting: AnyObject {
    func greet(answer: String)
}

class GreetViewController: UIViewController {
    
    weak var greetingDelegate: Greeting?
    
    init(greetingDelegate: Greeting?) {
        self.greetingDelegate = greetingDelegate
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var greetView: GreetView!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetView = GreetView()
        view = greetView
    }
    

}
