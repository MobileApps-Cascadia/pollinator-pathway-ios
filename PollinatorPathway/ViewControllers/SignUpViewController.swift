//
//  SignUpViewController.swift
//  PollinatorPathway
//
//  Created by Student Account on 10/26/22.
//

import UIKit

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
    
    
    @IBAction func SignUpButtonTapped(_ sender: Any) {
        
        // Validate the fields
        
        
        
        
        // Create the new user
        
        
        
        // Transition to the home screen
        
    }
    
    
    
    
}
