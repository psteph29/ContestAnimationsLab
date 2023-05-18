//
//  ViewController.swift
//  Contest
//
//  Created by Paige Stephenson on 5/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if emailTextField.text == "" {
           shakeTextBox()
        } else {
            performSegue(withIdentifier: "entrySuccess", sender: nil)
        }
        
    }
    
    func shakeTextBox() {
        UIView.animate(withDuration: 0.04, animations: {
            self.emailTextField.transform = CGAffineTransform(scaleX: 10, y: 1.3)
        }) { _ in
            UIView.animate(withDuration: 0.07, animations: {
                self.emailTextField.transform = CGAffineTransform(translationX: -5, y: 1.3)
            }) {
                _ in
                UIView.animate(withDuration: 0.07, animations: {
                    self.emailTextField.transform = CGAffineTransform.identity
                })
            }
        }
    }
    
}
