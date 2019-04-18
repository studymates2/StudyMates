//
//  SignUpViewController.swift
//  StudyMates
//
//  Created by Kenneth Li on 4/5/19.
//  Copyright © 2019 Kenneth Li. All rights reserved.
//




import UIKit
import Firebase

class SignUpViewController: UIViewController, UITextFieldDelegate {
    

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self
        usernameField.delegate = self
        passwordField.delegate = self
        emailField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameField.resignFirstResponder()
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
        emailField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func signupButton(_ sender: Any) {
        
        // Need to still checking unique user/email and not empty
        // Check Username/password not empty
        
        Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) { (user, error) in
            if error == nil {
                let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                self.navigationController?.pushViewController(mainViewController, animated: true)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                
                }
            }
    // Check Usernamefieldtext as well to be valid. AND not empty as well or error:{ User Reference is 1.}
        
        AppDelegate.db.collection("Users").document(usernameField.text!).setData(["email-id" : emailField.text!])
        }
    
    @IBAction func onCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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

