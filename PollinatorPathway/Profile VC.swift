//
//  Profile VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 5/24/22.
//

import UIKit

class ProfileVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! PlantingsTableViewCell
    let courseTitle = devCourses[indexPath .row]
        _ = devCousesImages[indexPath .row]
    cell.label.text=courseTitle
    cell.photo.image=self.devCousesImages[indexPath .row]

    return cell
    }
    

    
    @IBOutlet weak var tableView: UITableView!


    let devCourses = [("Herbal Gerbil"),("Spriral Herb Garden"),("Vegetable Garden")]

    let devCousesImages = [UIImage(named: "bee3_2"), UIImage(named: "bee1_2"), UIImage(named: "butterfly3_2")]

    override func viewDidLoad() {

    super.viewDidLoad()

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

    return devCourses.count

    }

  
    }
