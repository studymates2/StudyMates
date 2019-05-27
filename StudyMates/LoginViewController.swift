//
//  LoginViewController.swift
//  StudyMates
//
//  Created by Kenneth Li on 4/5/19.
//  Copyright © 2019 Kenneth Li. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameField.delegate = self
        passwordField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func onLogin(_ sender: Any) {
        // add checking if usernameField.text is not empty. else get error.
        
        let collectionRef = AppDelegate.db.collection("Users").document(usernameField.text!)
        collectionRef.getDocument { (document, error) in
            if let document = document, document.exists {
                
                let dataDescription = document.get("email-id") as! String
                print(dataDescription)
                self.signin(dataDescription, self.passwordField.text!)
                
            } else {
                print("Document does not exist")
            }
        }
    }
    
    
    
    func signin(_ username: String,_ password: String) {
        Auth.auth().signIn(withEmail: username, password: password) { (user, error) in
            if error == nil{
                // Navigate to HomeViewController
                print("Hello World")
                let Homestoryboard = UIStoryboard(name: "Home", bundle: nil)
                let vc = Homestoryboard.instantiateViewController(withIdentifier: "TabBarController")
                self.present(vc, animated: true, completion: nil)
            }
                
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)

                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        print(Auth.auth().currentUser)
    }
        

}


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */





