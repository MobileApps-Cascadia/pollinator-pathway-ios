//
//  ForumVC.swift
//  PollinatorPathway
//
//  Created by Student Account on 11/23/22.
//

import UIKit
import FirebaseAuth

class Forum_VC: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    let locations = ["Seattle, wa","Snohomish, wa","Everett, wa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
    
    extension Forum_VC: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            print ("you tapped me!")}
    }
    
    extension Forum_VC: UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = locations[indexPath.row]
        return cell
    }
     
}
    


    

