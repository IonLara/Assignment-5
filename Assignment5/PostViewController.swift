//
//  PostViewController.swift
//  Assignment5
//
//  Created by Ion Sebastian Rodriguez Lara on 27/04/23.
//

import UIKit

class PostViewController: UIViewController {

    let appleIcon: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(named: "apple_logo")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    let appleLabel: UILabel = {
        let label = UILabel()
        label.text = "apple"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    let postImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "open_mac")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let likeIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "heart")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    let commentIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "message")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    let shareIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sent")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    let bookmark: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bookmark")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    let likedBy: UILabel = {
        let label = UILabel()
        label.text = "Liked by"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17)
        label.widthAnchor.constraint(equalToConstant: 65).isActive = true
        label.heightAnchor.constraint(equalToConstant: 22).isActive = true
        return label
    }()
    
    let liker: UILabel = {
        let label = UILabel()
        label.text = "apple"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(appleIcon)
        view.addSubview(appleLabel)
        view.addSubview(postImage)
        view.addSubview(likeIcon)
        view.addSubview(commentIcon)
        view.addSubview(shareIcon)
        view.addSubview(bookmark)
        view.addSubview(likedBy)
        view.addSubview(liker)
        
        //Apple Icon Anchors
        appleIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        appleIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        //Apple Label Anchors
        appleLabel.centerYAnchor.constraint(equalTo: appleIcon.centerYAnchor).isActive = true
        appleLabel.leadingAnchor.constraint(equalTo: appleIcon.trailingAnchor, constant: 10).isActive = true
        
        //Post Anchors
        postImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        postImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        postImage.heightAnchor.constraint(equalTo: postImage.widthAnchor, multiplier: 1).isActive = true
        postImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        postImage.topAnchor.constraint(equalTo: appleIcon.bottomAnchor, constant: 10).isActive = true
        
        //Like Anchors
        likeIcon.leadingAnchor.constraint(equalTo: postImage.leadingAnchor).isActive = true
        likeIcon.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 10).isActive = true
        
        //Comment Anchors
        commentIcon.centerYAnchor.constraint(equalTo: likeIcon.centerYAnchor).isActive = true
        commentIcon.leadingAnchor.constraint(equalTo: likeIcon.trailingAnchor, constant: 10).isActive = true
        
        //Share Anchors
        shareIcon.centerYAnchor.constraint(equalTo: likeIcon.centerYAnchor).isActive = true
        shareIcon.leadingAnchor.constraint(equalTo: commentIcon.trailingAnchor, constant: 10).isActive = true
        
        //Bookmark Anchors
        bookmark.centerYAnchor.constraint(equalTo: shareIcon.centerYAnchor).isActive = true
        bookmark.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        //Likes Anchors
        likedBy.leadingAnchor.constraint(equalTo: postImage.leadingAnchor).isActive = true
        likedBy.topAnchor.constraint(equalTo: likeIcon.bottomAnchor, constant: 10).isActive = true
        
        liker.centerYAnchor.constraint(equalTo: likedBy.centerYAnchor).isActive = true
        liker.leadingAnchor.constraint(equalTo: likedBy.trailingAnchor, constant: 5).isActive = true
        
    }

}
