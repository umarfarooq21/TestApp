//
//  SplashVC.swift
//  TestApp
//
//  Created by Muhammad Umar on 1/21/22.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        saveProductsDB()
        
    }
    
    func saveProductsDB(){
        
        
        

        
        
        APIClient.GetProductsRequest { response, error, message in
            if response != nil {
                
                DispatchQueue.main.asyncAfter(deadline: .now() +  2.0, execute: {
                    
                    self.gotoHomeScreen()
                    
                })
                
            }
            
            if error != nil {
                print(error.debugDescription)
            }
            
            if message != nil {
                showToast(viewControl: self, titleMsg: "Error", msgTitle: message!)
            }
            
        }
    }
    

    func gotoHomeScreen() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "viewControllerHome") as! ViewController
        
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        window?.rootViewController = homeVC
        UIView.transition(with: window!, duration: 0.3, options: [.transitionCrossDissolve], animations: nil, completion: nil)
        
    }
    
    func gotoWelcomeScreen() {
        self.performSegue(withIdentifier: "gotoHome", sender: self)
    }

}
