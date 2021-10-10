//
//  ForgotViewController.swift
//  first
//
//  Created by Ahmad Harki Ramadhan on 10/10/21.
//

import UIKit

class ForgotViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad")
        usernameTextField.text = username
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2. viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3. viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("4. viewWillDisappear ")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("5. viewDidDisappear")
    }
    
    deinit {
        print("6. deinit")
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}

extension UIViewController {
    func showForgetViewController(username: String? = nil){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "forgot") as! ForgotViewController
        viewController.username = username
//        present(viewController, animated: true, completion: nil)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
