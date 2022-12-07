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
    
    var docRef: DocumentReference!
    
    
    @IBOutlet weak var successMessage: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()

        // Do any additional setup after loading the view.
        docRef = Firestore.firestore().document("users/information")
       
    }
    
    func setUpElements(){
        //hide error Label
        successMessage.alpha = 0
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
        
        
        guard let userID = Auth.auth().currentUser?.uid else { return }
        guard let website = websiteTextField.text, !website.isEmpty else { return }
        guard let phone = PhoneTextField.text, !phone.isEmpty else { return }
        guard let address = AddressTextField.text, !address.isEmpty else { return }
        guard let city = CityTextField.text, !city.isEmpty else { return }
        guard let state = StateTextField.text, !state.isEmpty else { return }
        guard let zipcode = ZipCodeTextField.text, !zipcode.isEmpty else { return }
        guard let gps = GpsTextField.text, !gps.isEmpty else { return }
        
        let dataToSave: [String: Any] = ["uid": userID,  "website": website, "phone": phone, "address": address, "city": city, "state": state, "zipcode": zipcode, "gps": gps ]
        
        docRef.setData(dataToSave) {(error) in
            if let error = error {
                print("oups!: \(error.localizedDescription)")
            }else {
                self.showError("data has been saved!")
            }
        }
        
    }
    
    func showError(_ message:String) {
        successMessage.text = message
        successMessage.alpha = 1
    }
}

