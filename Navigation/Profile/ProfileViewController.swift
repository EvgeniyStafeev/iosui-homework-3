//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Стафеев Евгений on 01.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        profileHeaderView.backgroundColor = .lightGray
        viewWillLayoutSubviews()
    }

   override func viewWillLayoutSubviews() {
       profileHeaderView.frame = view.safeAreaLayoutGuide.layoutFrame
            view.addSubview(profileHeaderView)
        }
}
