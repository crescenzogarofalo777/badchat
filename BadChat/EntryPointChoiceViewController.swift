//
//  EntryPointChoiceViewController.swift
//  BadChat
//
//  Created by Crescenzo Garofalo on 05/11/17.
//  Copyright © 2017 crescenzo garofalo. All rights reserved.
//

import UIKit

class EntryPointChoiceViewController: UIViewController {

    @IBAction func loginAction(_ sender: UIButton) {
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    @IBAction func registerAction(_ sender: UIButton) {
        performSegue(withIdentifier: "register", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
