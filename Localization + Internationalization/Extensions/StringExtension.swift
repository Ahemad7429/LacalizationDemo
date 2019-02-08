//
//  StringExtension.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 05/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import UIKit

extension String {
   
    func localized(bundle: Bundle = Bundle.localizedBundle(), tableName: TableName = .MainTable) -> String {
        return NSLocalizedString(self, tableName: tableName.rawValue, bundle: bundle, value: "**\(self)**", comment: "")
    }
    
    func localizeWithFormat(bundle: Bundle = Bundle.localizedBundle(), tableName: TableName = .MainTable, arguments: CVarArg...) -> String{
        return String(format: self.localized(bundle: bundle, tableName: tableName), arguments: arguments)
    }
}

enum TableName: String {
    case MainTable
    case SettingTable
    case OnboardingTable
}


extension UIViewController {
    static var storyboardId: String {
        return "\(self)"
    }
}

