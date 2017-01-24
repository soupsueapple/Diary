//
//  DiaryLabel.swift
//  Diary_0
//
//  Created by 汤坤 on 2017/1/23.
//  Copyright © 2017年 Kun Soup. All rights reserved.
//

import UIKit

func sizeHeightWithText(labelText: String,
                        fontSize: CGFloat,
                        textAttributes: [String : AnyObject]) -> CGRect {
    
    return labelText.boundingRect(
        with: CGSize(width:fontSize, height:480),
        options: NSStringDrawingOptions.usesLineFragmentOrigin,
        attributes: textAttributes, context: nil)
}

class DiaryLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var textAttributes: [String: AnyObject]!
    
    convenience init(fontname: String, labelText: String, fontSize: CGFloat, lineHeight: CGFloat){
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        let font = UIFont(name: fontname, size: fontSize) as UIFont!
        
//        let font = UIFont.systemFont(ofSize: 16.0) as UIFont!
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineHeight
        
        textAttributes = [NSFontAttributeName: font!, NSParagraphStyleAttributeName: paragraphStyle]
        
        let labelSize = sizeHeightWithText(labelText: labelText, fontSize: fontSize, textAttributes: textAttributes)
        
        self.frame = CGRect(x: 0, y: 0, width: labelSize.width, height: labelSize.height)
        
        self.attributedText = NSAttributedString(string: labelText as String, attributes: textAttributes)
        
        self.lineBreakMode = NSLineBreakMode.byCharWrapping
        
        self.numberOfLines = 0
        
    }
    
    func updateText(labelText: String){
        
        let labelSize = sizeHeightWithText(labelText: labelText, fontSize: self.font.pointSize, textAttributes: textAttributes)
        
        self.frame = CGRect(x: 0, y: 0, width: labelSize.width, height: labelSize.height)
        
        self.attributedText = NSAttributedString(string: labelText as String, attributes: textAttributes)
        
    }

}
