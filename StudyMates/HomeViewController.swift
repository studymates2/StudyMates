//
//  HomeViewController.swift
//  StudyMates
//
//  Created by Kenneth Li on 4/5/19.
//  Copyright © 2019 Kenneth Li. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,ModalTransitionListener     {
    

    
    var user:String = (Auth.auth().currentUser?.email)!
    var Groups = [String:Any]()
    var Groups1 = [String]()
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ModalTransitionMediator.instance.setListener(listener: self)
        
        profileImage.layer.cornerRadius = profileImage.frame.size.height/2
        profileImage.clipsToBounds = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 126
        
        // Do any additional setup after loading the view.
        Groups.removeAll()
        Groups1.removeAll()
        
        let docRef = AppDelegate.db.collection("JoinedGroups").document(user)
        
        docRef.getDocument { (document, error) in
            if let document = document {
                let dataDescription = document.data()
                self.Groups = dataDescription!
                for value in self.Groups.values {
                    self.Groups1.append(value as! String)
                }
                print(self.Groups1)
                print("Cached document data: \(dataDescription)")
            } else {
                print("Document does not exist in cache")
            }
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }
    

    func popoverDismissed() {
        self.tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Groups1.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsTableViewCell") as! GroupsTableViewCell
        
        cell.groupNameField.text = Groups1[indexPath.row]
        
        return cell
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
