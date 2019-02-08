//
//  BundleExtension.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 06/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import Foundation

extension Bundle {
    private static var bundle: Bundle!
    
    public static func localizedBundle() -> Bundle! {
        
        if bundle == nil {
            let appLang = UserDefaults.standard.string(forKey: "app_lang") ?? "en"
            let path = Bundle.main.path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }
        
        return bundle;
    }
    
    public static func setLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: "app_lang")
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}
