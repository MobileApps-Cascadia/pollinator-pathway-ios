//
//  EditProfileViewController.swift
//  PollinatorPathway
//
//  Created by Student Account on 11/28/22.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


class EditProfileViewController: UIViewController {
    
    
    @IBOutlet weak var websiteTextField: UITextField!
    
    
    @IBOutlet weak var AddEmailTextField: UITextField!
    
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    
    
    @IBOutlet weak var FacebookTextField: UITextField!
    
    
    @IBOutlet weak var InstagramTextField: UITextField!
    
    
    @IBOutlet weak var AddressTextField: UITextField!
    
    
    @IBOutlet weak var CityTextField: UITextField!
    
    
    @IBOutlet weak var StateTextField: UITextField!
    
    
    @IBOutlet weak var ZipCodeTextField: UITextField!
    
    
    
    @IBOutlet weak var GpsTextField: UITextField!
    
    
    @IBOutlet weak var SubmitButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        
        
        
        let website = websiteTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let phone = PhoneTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let address = AddressTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let city = CityTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let state = StateTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let zipcode = ZipCodeTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let gps = GpsTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let db = Firestore.firestore()
            let user = Auth.auth().currentUser
            let uid = user?.uid ?? ""
        
            let ref = db.collection("users").document("infos")
        
        ref.setData(["uid": uid, "website": website, "phone": phone, "address": address, "city": city, "state": state, "zipcode": zipcode, "gps": gps ]) { error in
            
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}

