//
//  ViewController.swift
//  URLScheme_Demo
//
//  Created by APP Dimerco on 11/01/2018.
//  Copyright © 2018 APP Dimerco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
    }

    @IBAction func phoneBtnPressed(_ sender: Any) {
        if let phoneStr = phoneBtn.titleLabel?.text {
            //撥 718 分機 p 為等待一秒
            guard let url = URL(string: "tel:" + phoneStr + "p718") else {return}
            if UIApplication.shared.canOpenURL(url) {
                print("Open")
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

