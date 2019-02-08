//
//  LanguageListCell.swift
//  Localization + Internationalization
//
//  Created by Ahemadabbas Vagh on 06/02/19.
//  Copyright © 2019 Ahemadabbas Vagh. All rights reserved.
//

import UIKit

class LanguageListCell: UITableViewCell {

    @IBOutlet weak var languageName: UILabel!
    @IBOutlet weak var selectionView: UIView!
    
    var isSelectedView: Bool? {
        didSet {
            if isSelectedView ?? false {
                selectionView.backgroundColor = UIColor.black
            } else {
                selectionView.backgroundColor = UIColor.gray
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionView.layer.cornerRadius = 10.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
