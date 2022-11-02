//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Стафеев Евгений on 01.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText = String()

    override init(frame: CGRect) {
             super.init(frame: frame)
             setupView()
         }

         required init?(coder: NSCoder) {
             super.init(coder: coder)
         }

         lazy var profileAvatarImage: UIImageView = {
             let tempImage = UIImage(named: "5631")
             let profileAvatarImage = UIImageView(frame: CGRect(x: 16, y: 16, width: 110, height: 110))
             profileAvatarImage.clipsToBounds = true
             profileAvatarImage.backgroundColor = .systemBackground
             profileAvatarImage.layer.cornerRadius = 55.0
             profileAvatarImage.layer.borderWidth = 3.0
             profileAvatarImage.layer.borderColor = UIColor.white.cgColor
             profileAvatarImage.image = tempImage
             return profileAvatarImage
         }()

         lazy var profileNameLabel: UILabel = {
             let profileNameLabel = UILabel(frame: CGRect(x: 142, y: 27, width: 150, height: 20))
             profileNameLabel.text = "Hipster Cat"
             profileNameLabel.textColor = .black
             profileNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
             return profileNameLabel
         }()

         lazy var profileStatusTextField: UITextField = {
             let profileStatusTextField = UITextField(frame: CGRect(x: 142, y: 78, width: 200, height: 16))
             profileStatusTextField.text = "Waiting for something..."
             profileStatusTextField.textColor = .gray
             profileStatusTextField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
             profileStatusTextField.isUserInteractionEnabled = false
             return profileStatusTextField
         }()

         lazy var showStatusButton: UIButton = {
             let showStatusButton = UIButton(frame: CGRect(x: 16, y: 150, width: UIScreen.main.bounds.width - 32, height: 50))
             showStatusButton.backgroundColor = .systemBlue
             showStatusButton.setTitle("Show status", for: .normal)
             showStatusButton.setTitleColor(UIColor.white, for: .normal)
             showStatusButton.layer.cornerRadius = 12.0
             showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
             showStatusButton.layer.shadowRadius = 4.0
             showStatusButton.layer.shadowColor = UIColor.black.cgColor
             showStatusButton.layer.shadowOpacity = 0.7
             showStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
             return showStatusButton
         }()

         @objc private func buttonPressed() {
             profileStatusTextField.text = statusText
             print(statusText)
         }

         private func setupView(){
             addSubview(profileAvatarImage)
             addSubview(profileNameLabel)
             addSubview(profileStatusTextField)
             addSubview(showStatusButton)
         }

}
