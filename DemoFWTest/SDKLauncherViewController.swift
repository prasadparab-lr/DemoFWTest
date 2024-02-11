//
//  SDKLauncherViewController.swift
//  DemoFWTest
//
//  Created by Prasad Parab on 11/02/24.
//

import UIKit
import LRABCSDK

class SDKLauncherViewController: UIViewController {
    @IBOutlet weak var ssoTokenTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func launchTapped(_ sender: Any) {
        guard let sso = ssoTokenTF.text else { return }
        LRSDKConfigurator.launchSDK(ssoToken: sso, delegate: self)
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

extension SDKLauncherViewController: LRSDKDelegate {
    func isUserAlive(isUserActive: Bool) {
        
    }
    
    func userLogout() {
        
    }
    
    func backToHome() {
        
    }
    
    
}
