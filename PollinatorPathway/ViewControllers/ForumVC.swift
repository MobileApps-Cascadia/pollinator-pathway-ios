//
//  ForumVC.swift
//  PollinatorPathway
//
//  Created by Student Account on 11/23/22.
//

import UIKit
import FirebaseAuth

class Forum_VC: UIViewController{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! PlantingsTableViewCell
    let forumTitle = forumTitle[indexPath .row]
        _ = forumPostImages[indexPath .row]
    cell.label.text=forumTitle
    cell.photo.image=self.forumPostImages[indexPath .row]

    return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    let forumTitle = [("Herbal Gerbil"),("Spriral Herb Garden"),("Vegetable Garden")]

    let forumPostImages = [UIImage(named: "bee3_2"), UIImage(named: "bee1_2"), UIImage(named: "butterfly3_2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {

    super.didReceiveMemoryWarning()

    // Dispose of any resources that can be recreated.

    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

    return 1

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return forumTitle.count

    }

  
}
    

