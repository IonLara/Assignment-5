//
//  LoginViewController.swift
//  Assignment5
//
//  Created by Ion Sebastian Rodriguez Lara on 27/04/23.
//

import UIKit

class LoginViewController: UIViewController {

    
    let profilePicture: UIImageView = {
      let image = UIImageView()
      image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "WhiteSquare")
        image.layer.masksToBounds = true
        image.layer.cornerRadius = CGRectGetWidth(image.frame) / 2
      return image
    }()
    
    let usernameText: UITextField = {
        let tf = UITextField()
        tf.text = "Username / Email Address"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordText: UITextField = {
        let tf = UITextField()
        tf.text = "Password"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let createButton: UIButton = {
        let bttn = UIButton(type: .system)
        bttn.setTitle("Create an account", for: .normal)
        bttn.translatesAutoresizingMaskIntoConstraints = false
        return bttn
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalSpacing
        return sv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(profilePicture)
        view.addSubview(usernameText)
        view.addSubview(passwordText)
        view.addSubview(createButton)
        view.addSubview(stackView)
        
        view.backgroundColor = .lightGray
        
        //Profile Picture Anchors
        profilePicture.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        profilePicture.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        profilePicture.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        profilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        profilePicture.layer.masksToBounds = true
        profilePicture.layer.cornerRadius = CGRectGetWidth(profilePicture.frame) / 2
        
        //Username input Anchors
        usernameText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        usernameText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        usernameText.topAnchor.constraint(equalTo: profilePicture.bottomAnchor, constant: 50).isActive = true
        usernameText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Password Input Anchors
        passwordText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        passwordText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordText.topAnchor.constraint(equalTo: usernameText.bottomAnchor, constant: 10).isActive = true
        passwordText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Create account Anchors
        createButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        createButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        createButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        createButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Stack View Anchors
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 50).isActive = true
        stackView.bottomAnchor.constraint(equalTo: createButton.topAnchor, constant: -100).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
