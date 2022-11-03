//
//  SignUpViewController.swift
//  PollinatorPathway
//
//  Created by Student Account on 10/26/22.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        //hide error Label
        ErrorLabel.alpha = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Check the fields and validate the data entered
    //If correct, returns nil
    //If not, returns the error message
    
    func validateFields() -> String? {
        
        // Check if all fields are filled in
        if FirstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            LastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            EmailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields"
        }
        
        // Check if the password is secure enough
        let cleanedPassword = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        
        return nil
    }
    
    
    @IBAction func SignUpButtonTapped(_ sender: Any) {
        
        // Validate the fields
        let error = validateFields()
        
        if error != nil {
            
            //There's something wrong with the fields, show error message
            showError(error!)
        }
        else{
            
            // Create cleaned versions of the data
            let firstName = FirstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = LastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            
            // Create the new user
            Auth.auth().createUser(withEmail: email, password: password){ (result, err) in
                
                // Check for errors
                if err != nil {
                    
                    // There was an error creating the user
                    self.showError("Error creating user")
                }
                else {
                    // User was created successfully, now store the email and password
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["firstname": firstName, "lastname": lastName, "uid": result!.user.uid ]) { (error) in
                        
                        if error != nil {
                            // Show error message
                            self.showError("Error saving user data")
                        }
                    }
                    // Transition to the home screen
                    self.transitionToHome()
                }
            }
            
            
        }
    }
    
    func showError(_ message:String) {
        ErrorLabel.text = message
        ErrorLabel.alpha = 1
    }
    
    func transitionToHome() {
       let profileViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.profileViewController) as? ProfileVC
        
        view.window?.rootViewController = profileViewController
        view.window?.makeKeyAndVisible()
    }
    
}
