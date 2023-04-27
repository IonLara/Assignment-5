//
//  ViewController.swift
//  Assignment5
//
//  Created by Ion Sebastian Rodriguez Lara on 27/04/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = CGRectGetWidth(profileImage.frame) / 2
        
    }


}

