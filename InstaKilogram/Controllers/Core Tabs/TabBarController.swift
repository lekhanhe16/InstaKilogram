//
//  ViewController.swift
//  InstaKilogram
//
//  Created by acupofstarbugs on 11/03/2023.
//

import UIKit
import FirebaseAuth

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        handleNotAuthenticated()
    }
    func handleNotAuthenticated() {
        if Auth.auth().currentUser == nil {
            
            let showItemStoryboard = UIStoryboard(name: "Login", bundle: nil)
            let vc = showItemStoryboard.instantiateViewController(withIdentifier: "LoginSB") as! LoginViewController
            print(vc)
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }

}

