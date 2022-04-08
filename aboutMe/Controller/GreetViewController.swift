//
//  GreetViewController.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 27.03.22.
//

import UIKit

class GreetViewController: UIViewController {
    
    var greeting: ((String) -> Void)
    private var greetView: GreetView!
    
    init(greeting: @escaping (String) -> Void) {
        self.greeting = greeting
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


    override func loadView() {
        greetView = GreetView(greeting: greeting)
        view = greetView
    }

    

}
