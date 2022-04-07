//
//  ViewController.swift
//  aboutMe
//
//  Created by Moe Steinmueller on 21.03.22.
//

import UIKit

class HomeViewController: UIViewController, Presentable, Greeting {

    var contentView: HomeView!
    
    override func loadView() {
        contentView = HomeView(presentable: self)
        
        view = contentView
    }



    func presentViewController() {
       present(GreetViewController(greetingDelegate: self), animated: true, completion: nil)
    }
    
    func greet(answer: String) {
        // Dismiss GreetVC modal that gets presented as a modal
        dismiss(animated: true, completion: nil)
        
        // Display an alert controller
        let alertController = UIAlertController(title: "That's good, you are \(answer)", message: "Have a wonderful day!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Thanks!", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

