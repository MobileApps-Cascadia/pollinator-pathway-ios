//
//  Existing User VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/26/22.
//

import UIKit

class Existing_User_VC: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var forgotButton: UIButton!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var newUserBotton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements(){
        errorLabel.alpha = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    */

    
    @IBAction func forgotTapped(_ sender: Any) {
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
    }
    
    
    @IBAction func newUserTapped(_ sender: Any) {
    }
    
}
