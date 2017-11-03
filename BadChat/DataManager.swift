//
//  DataManager.swift
//  BadChat
//
//  Created by crescenzo garofalo on 03/11/2017.
//  Copyright © 2017 crescenzo garofalo. All rights reserved.
//

import UIKit

class DataManager: NSObject {

    public static var instanceVariable = DataManager()
    
    private override init() {
        
    }
    
    func controlValueKey(key : String) -> String? {
        var res : String?
        
        let fileManager = FileManager.default
        
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        
        let path = documentDirectory.appending("/profile.plist")
        
        if (!fileManager.fileExists(atPath: path)) {
            debugPrint("file profile.plist doesnt exist")
            if let bundlePath = Bundle.main.path(forResource: "profile", ofType: "plist"){
                let result = NSMutableDictionary(contentsOfFile: bundlePath)
                debugPrint("Bundle file profile.plist is -> \(result?.description ?? "")")
                do{
                    try fileManager.copyItem(atPath: bundlePath, toPath: path)
                }catch{
                    print("copy failure.")
                }
            }
        } else {
            let myDict = NSDictionary(contentsOfFile: path)
            if let dict = myDict{
                if let tmp = dict.object(forKey: key) {
                    res = tmp as? String ?? ""
                    debugPrint("res \(res!)")
                }
                
            }else{
                print("load failure.")
            }
        }
        return res
        
    }
}
