//
//  HomeYearCollectionViewCell.swift
//  Diary_0
//
//  Created by 汤坤 on 2017/1/24.
//  Copyright © 2017年 Kun Soup. All rights reserved.
//

import UIKit

class HomeYearCollectionViewCell: UICollectionViewCell {
    
    var textLabel: DiaryLabel!
    var textInt: Int = 0
    var labelText: String = "" {
        didSet {
            textLabel.updateText(labelText: labelText)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textLabel = DiaryLabel(fontname: "TpldKhangXiDictTrial", labelText: labelText, fontSize: 16.0, lineHeight: 5.0)
        textLabel.updateText(labelText: labelText)
        self.contentView.addSubview(textLabel)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel.center = CGPoint(x: itemWidth/2.0, y: itemHeight/2.0)
    }
    
}
