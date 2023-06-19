//
//  UIImageviewExtension.swift
//  CleanexpressDEV
//
//  Created by mohammed ichou on 20/06/2023.
//

import Foundation
import UIKit
import FirebaseStorage

extension UIImageView{
    func load(url: String){
        let ref = Storage.storage().reference(forURL: url)
        ref.getData(maxSize: 15*1024*1024) { data, err in
            if let err = err{
                print("ERR2")
                print(err)
            }else{
                print("ICI")
                if let img = data{
                    self.image = UIImage(data: img)
                }
            }
        }
    }
}


