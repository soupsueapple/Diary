//
//  DiaryLayout.swift
//  Diary_0
//
//  Created by 汤坤 on 2017/1/24.
//  Copyright © 2017年 Kun Soup. All rights reserved.
//

import UIKit

let screenSize = UIWindow().screen.bounds

class DiaryLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        super.prepare()
        let itemSize = CGSize(width: itemWidth,height: itemHeight)
        self.itemSize = itemSize
        // Cell
        self.minimumInteritemSpacing = 0.0
        // Cell
        self.minimumLineSpacing = 0
        //
        self.sectionInset = UIEdgeInsets(
            top:(screenSize.height/2.0) - (itemHeight/2.0),
            left: (screenSize.width/2.0) - (itemWidth/2.0),
            bottom: (screenSize.height/2.0) - (itemHeight/2.0),
            right: (screenSize.height/2.0) - (itemHeight/2.0))
        //
        scrollDirection = UICollectionViewScrollDirection.horizontal
    }

}
