//
//  CreationGroupViewController.swift
//  StudyMates
//
//  Created by Kenneth Li on 5/24/19.
//  Copyright © 2019 Kenneth Li. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class CreationGroupViewController: UIViewController {

    var homeVC = HomeViewController()
    
    
    @IBOutlet weak var groupImage: UIImageView!
    @IBOutlet weak var groupName: UITextField!
    @IBOutlet weak var groupSchool: UITextField!
    @IBOutlet weak var groupSubject: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var user:String = (Auth.auth().currentUser?.email)!
    
    
    
    
    
    @IBAction func groupCreate(_ sender: Any) {
        
        AppDelegate.db.collection("Groups").document(groupName.text!).setData(["School" : groupSchool.text!])
        
        AppDelegate.db.collection("JoinedGroups").document(user).setData([groupName.text!: groupName.text!], merge: true)
        
        
        AppDelegate.db.collection("Groups").document(groupName.text!).setData(["Subject" : groupSubject.text!], merge: true)
        
        
        homeVC.Groups.removeAll()
        homeVC.Groups1.removeAll()
        
        let docRef = AppDelegate.db.collection("JoinedGroups").document(user)
        
        docRef.getDocument { (document, error) in
            if let document = document {
                let dataDescription = document.data()
                self.homeVC.Groups = dataDescription!
                for value in self.homeVC.Groups.values {
                    self.homeVC.Groups1.append(value as! String)
                }
                print(self.homeVC.Groups1)
                print("Cached document data: \(dataDescription)")
                ModalTransitionMediator.instance.sendPopoverDismissed(modelChanged: true)
            } else {
                print("Document does not exist in cache")
            }
        }
        dismiss(animated: true, completion: nil )
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
