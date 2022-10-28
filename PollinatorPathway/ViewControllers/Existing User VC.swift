//
//  Existing User VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/26/22.
//

import UIKit

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
        // Validate text fields
        
    }
    
    @IBAction func NewUserTapped(_ sender: Any) {
        
    }
    
    
    
}
