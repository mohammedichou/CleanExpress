//
//  CloudstorageManager.swift
//  CleanexpressDEV
//
//  Created by mohammed ichou on 20/06/2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore


class CloudstorageManager{
    
    static let shared = CloudstorageManager()
    
    private var db = Firestore.firestore()
    
    init(){}
    
    func initstorage(){
        
    }
    
    func addDocumentTest(){
        db.collection("test").addDocument(data: ["test" : "test"]){
            err in
            if let err = err{
                print("err :: \(err) ")
            }else{
                print("document add OK")
            }
        }
    }
    
    
}
