//
//  OnboardingVC.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 05/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import UIKit

class OnboardingVC: UIViewController {

    @IBOutlet weak var userDetailsTextView: UITextView!
    
    @IBOutlet weak var mobileNumberTextField: UITextField! {
        didSet {
          //  mobileNumberTextField.placeholder = ConstantOnBoarding.mobileNumPlaceholder
        }
    }
    @IBOutlet weak var lastNameTextField: UITextField! {
        didSet {
          //  lastNameTextField.placeholder = ConstantOnBoarding.lastNamePlaceholder
        }
    }
    @IBOutlet weak var firstNameTextField: UITextField! {
        didSet {
          //  firstNameTextField.placeholder = ConstantOnBoarding.firstNamePlaceholder
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func checkDetailsButtonWasTapped(_ sender: UIButton) {
    }
    
    @IBAction func closeScreenButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
