//
//  ViewController.swift
//  CleanexpressDEV
//
//  Created by mohammed ichou on 17/06/2023.
//

import UIKit
import FirebaseStorage

class ViewController: UIViewController {
    
    //gs://cleanexpress-77ee1.appspot.com/images/Test/téléchargement.jpeg
    
    @IBOutlet weak var imageTest: UIImageView!
    let storage = Storage.storage()
    override func viewDidLoad() {
        super.viewDidLoad()
        /*let ref = Storage.storage().reference(forURL: "gs://cleanexpress-77ee1.appspot.com/images/Test/téléchargement.jpeg")
        ref.getData(maxSize: 1*1024*1024) { data, err in
            if let err = err{
                print(err)
            }else{
                if let img = data{
                    self.imageTest.image = UIImage(data: img)
                }
            }
        }*/
        imageTest.load(url: "gs://cleanexpress-77ee1.appspot.com/images/Test/téléchargement.jpeg")
        //let storageRef = storage.reference()
        // Do any additional setup after loading the view.
    }


}



