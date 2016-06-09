//
//  GULoginController.swift
//  GroceryUber
//
//  Created by Sahaj Bhatt on 6/8/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import UIKit
import Foundation

class GULoginController: UIViewController {
    
    // Labels
    let logo = UILabel()
    
    // Fields
    let usernameTF = UITextField()
    
    // Buttons
    let loginBtn = UIButton()
    let registerBtn = UIButton()
    
    func configureLabels() {
        logo.text = "Munch"
        logo.textAlignment = .Center
        logo.font = UIFont.systemFontOfSize(44.0)
        logo.textColor = UIColor.orangeColor()
        
    }
    
    func configureFields() {
        usernameTF.placeholder = "Username"
        usernameTF.allowsEditingTextAttributes = true
        usernameTF.borderStyle = .RoundedRect
    }
    
    func configureButtons() {
        loginBtn.setTitle("Login", forState: .Normal)
        loginBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginBtn.backgroundColor = UIColor.orangeColor()
        
        registerBtn.setTitle("Register", forState: .Normal)
        registerBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        registerBtn.backgroundColor = UIColor.blueColor()
    }
    
    func configureViews() {
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard)))
        
        configureLabels()
        configureFields()
        configureButtons()
        
        let viewsDict = [
            "logo"  : logo,
            "utf"   : usernameTF,
            "lb"    : loginBtn,
            "rb"    : registerBtn
        ]
        
        self.view.prepareViewsForAutoLayout(viewsDict)
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("H:|[logo]|", views: viewsDict))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("V:|-20-[logo(==150)]", views: viewsDict))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("H:|-40-[utf]-40-|", views: viewsDict))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("H:|[lb]|", views: viewsDict))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("H:|[rb]|", views: viewsDict))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("V:[logo]-40-[utf]", views: viewsDict))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithSimpleFormat("V:[lb(==60)][rb(==60)]|", views: viewsDict))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        configureViews()
    }
    
    func dismissKeyboard() {
        usernameTF.resignFirstResponder()
    }
}
