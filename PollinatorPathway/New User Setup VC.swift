//
//  New User Setup VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/26/22.
//

import UIKit

class New_User_Setup_VC: UIViewController {
    
    @IBOutlet weak var scanQRbutton: UIButton!
    @IBOutlet weak var scanQRtext: UITextField!
    let scannerVC = Scanner_VC()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        scannerVC.scannerDelegate = self
    }
}
    
    extension New_User_Setup_VC {
        private func updateUI() {
            //scan now qr code button
            scanQRbutton.setTitle("Scan QR Code", for: .normal)
            scanQRbutton.setTitleColor(UIColor.white, for: .normal)
            scanQRbutton.addTarget(self, action: #selector(scanQRaction), for: .touchUpInside)
            //output text box (TEMPORARY)
            scanQRtext.text = "test output here"
            scanQRtext.textAlignment = .center
            scanQRtext.textColor = UIColor.black

        }
        //function after button
        @objc func scanQRaction() {
            self.navigationController?.pushViewController(scannerVC, animated: true)
        }
}
    
    extension New_User_Setup_VC: ScannerVD {
        func didFindScannedText(text: String) {
          //Assigning the delegate to scanTextField
            scanQRtext.text = text
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

