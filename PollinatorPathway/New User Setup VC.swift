//
//  New User Setup VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/26/22.
//

import UIKit

class New_User_Setup_VC: UIViewController {
    
    @IBOutlet weak var scanBarButton: UIButton!
    @IBOutlet weak var scanTextField: UITextField!
    let scannerVC = Scanner_VC()

    override func viewDidLoad() {
        super.viewDidLoad()
        scannerVC.delegate = self
    }
    
    @objc func scanBarTapped() {
        self.navigationController?.pushViewController(scannerVC, animated: true)
    }
    
    extension New_User_Setup_VC: ScannerVD {
        func didFindScannedText(text: String) {
          //Assigning the delegate to scanTextField
            scanTextField.text = text
        }
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    */

}
