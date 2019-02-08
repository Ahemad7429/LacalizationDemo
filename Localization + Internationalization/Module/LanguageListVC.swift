//
//  LanguageListVC.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 06/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import UIKit

class LanguageListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var languageList = [LanguageModel]()
    var isFromSettings = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLanguageList()
        
    }
    
    func createLanguageList() {
        let english = LanguageModel()
        english.languageName = "English"
        english.languageCode = "en"
        languageList.append(english)
        
        let french = LanguageModel()
        french.languageName = "French"
        french.languageCode = "fr"
        languageList.append(french)
        
        tableView.reloadData()
    }
    
}

extension LanguageListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languageList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageListCell") as! LanguageListCell
        cell.selectionStyle = .none
        cell.languageName.text = languageList[indexPath.row].languageName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! LanguageListCell
        cell.isSelectedView = true
        
        Bundle.setLanguage(lang: languageList[indexPath.row].languageCode ?? "en")
        
        if isFromSettings {
            let alert = UIAlertController(title: "Warning", message: "You Need To restart app to reflact the language", preferredStyle: .alert)
            let action = UIAlertAction(title: "Okay", style: .default) { (action) in
                exit(0)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: MainVC.storyboardId) as! MainVC
            self.present(vc, animated: true, completion: nil)

        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! LanguageListCell
        cell.isSelectedView = false
    }
}
