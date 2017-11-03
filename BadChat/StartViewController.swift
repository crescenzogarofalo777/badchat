//
//  StartViewController.swift
//  BadChat
//
//  Created by crescenzo garofalo on 03/11/2017.
//  Copyright © 2017 crescenzo garofalo. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let registered = DataManager.instanceVariable.controlValueKey(key: "registered")
        
        if registered != nil && registered == "true" {
            performSegue(withIdentifier: "", sender: nil)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
