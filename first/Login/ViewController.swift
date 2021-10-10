//
//  ViewController.swift
//  first
//
//  Created by Ahmad Harki Ramadhan on 09/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var forgetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        containerView.backgroundColor = UIColor.white
        submitButton.layer.cornerRadius = 18
        submitButton.layer.masksToBounds = true
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        let validation = validate()
        if validation.isValid {
            login()
        }else{
            let alert = UIAlertController(title: "Error", message: validation.message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK!", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        showForgetViewController(username: usernameTextField.text)
    }
    
    func login(){
        print("Login Berhasil")
    }
    
    func validate() -> (isValid: Bool, message: String){
        guard let username = usernameTextField.text, !username.isEmpty else{
            return (false, "Username Tidak Boleh Kosong")
        }
        
        guard let password = passwordTextField.text, !password.isEmpty else{
            return (false, "Password Tidak Boleh Kosong")
        }
        
        return (true, "")
    }
}

