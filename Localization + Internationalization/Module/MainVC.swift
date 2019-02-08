//
//  ViewController.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 05/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = ConstantMainVC.descriptionLabel
        }
    }
    
    @IBOutlet weak var gotoOnBoarding: UIButton! {
        didSet {
            gotoOnBoarding.setTitle(ConstantMainVC.gotoOnboarding, for: .normal)
        }
    }
    
    @IBOutlet weak var gotoSettings: UIButton! {
        didSet {
            gotoSettings.setTitle(ConstantMainVC.gotoSettings, for: .normal)
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func gotoOnboardingWasTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: OnboardingVC.storyboardId) as! OnboardingVC
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func gotoSettingWasTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Settings", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: SettingsVC.storyboardId) as! SettingsVC
        self.present(vc, animated: true, completion: nil)
    }
    
}

