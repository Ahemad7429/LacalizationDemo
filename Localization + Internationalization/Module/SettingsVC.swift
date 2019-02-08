//
//  SettingsVC.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 05/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet weak var checkPluralLabel: UILabel! {
        didSet {
            checkPluralLabel.text = ConstantSettingVC.pluralizeTilteLabel
        }
    }
    @IBOutlet weak var totalFileCount: UILabel! {
        didSet {
            totalFileCount.text = ConstantSettingVC.countFileLabel
        }
    }
    @IBOutlet weak var noFileLabel: UILabel! {
        didSet {
            noFileLabel.text = ConstantSettingVC.countFileDescLabel
        }
    }
    @IBOutlet weak var dismissButton: UIButton! {
        didSet {
            dismissButton.setTitle(ConstantSettingVC.dismissButton, for: .normal)
        }
    }
    @IBOutlet weak var changeLanguage: UIButton! {
        didSet {
            changeLanguage.setTitle(ConstantSettingVC.changeLanguageButton, for: .normal)
        }
    }
    
    @IBOutlet weak var minusButton: UIButton! {
        didSet {
            minusButton.setTitle(ConstantSettingVC.minusButton, for: .normal)
        }
    }
    @IBOutlet weak var plusButton: UIButton! {
        didSet {
            plusButton.setTitle(ConstantSettingVC.plusButton, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
       // totalPeopleLabel.text = AppConstant.pendingFiles.localizeWithFormat(tableName: .SettingsTable, arguments: countFiles, countFiles)
    }
    
    @IBAction func minusButtonTapped(_ sender: Any) {
    }
    
    @IBAction func changeLanguageTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: LanguageListVC.storyboardId) as! LanguageListVC
        vc.isFromSettings = true
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
