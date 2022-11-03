//
//  Existing User VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/26/22.
//

import UIKit
import FirebaseAuth

class Existing_User_VC: UIViewController {
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    
    @IBOutlet weak var ForgotButton: UIButton!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBOutlet weak var LoginButton: UIButton!
    
    
    @IBOutlet weak var NewUserButton: UIButton!
    
    
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

    @IBAction func ForgotButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        // TODO: Validate text fields
        
        // Create cleaned versions of the text fields
        let email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) {
            (result, error) in
            
            if error != nil {
                // Couldn't sign in
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
            else {
                let profileViewController =
                    self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.profileViewController) as? ProfileVC
                 
                    self.view.window?.rootViewController = profileViewController
                    self.view.window?.makeKeyAndVisible()
            }
        }
        
    }
    
    @IBAction func NewUserTapped(_ sender: Any) {
        
    }
    
    
    
}
