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
    
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var ViewPagecontroller: UIView!
    @IBOutlet weak var imageTest: UIImageView!
    let storage = Storage.storage()
    override func viewDidLoad() {
        super.viewDidLoad()
       // CloudstorageManager.shared.addDocumentTest()
        imageTest.load(url: "gs://cleanexpress-77ee1.appspot.com/images/Test/téléchargement.jpeg")
        print("ICI")
        let pc = LKPageControl.init(frame: .zero)
        pc.currentPageIndicatorTintColor = .green
        pc.pageIndicatorTintColor = .blue
        pc.numberOfPages = 3
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.addTarget(self, action: #selector(onPageChanged(_:)), for: .valueChanged)
        ViewPagecontroller.addSubview(pc)
        
       /* self.ViewPagecontroller.addConstraints([
            
            pc.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            pc.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pc.heightAnchor.constraint(equalToConstant: 35),
            pc.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5, constant: 0)
            
            ])*/
        
        let fullString = NSMutableAttributedString(string: "")
        let image1Attachment = NSTextAttachment()
        image1Attachment.image = UIImage(systemName: "arrow.right")
        let image1String = NSAttributedString(attachment: image1Attachment)
        fullString.append(image1String)
        fullString.append(NSAttributedString(string: " Continue"))
        Btn1.titleLabel?.attributedText = fullString
        
        //let storageRef = storage.reference()
        // Do any additional setup after loading the view.
    }
    
    @objc func onPageChanged(_ sender: LKPageControl) {
      
      print("page \(sender.currentPage) is selected")
    }


}



