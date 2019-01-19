//
//  SHSearchBarButtonItem.swift
//  SHSearchedViewController
//
//  Created by Shkil Artur on 1/10/19.
//  Copyright © 2019 Shkil Artur. All rights reserved.
//

import UIKit

class ASHSearchBarButtonItem: UIBarButtonItem {
    
    override init() {
        super.init()
        setStyle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setStyle()
    }
    
    private func setStyle() {
        let podBundle = Bundle(for: self.classForCoder)
        if let bundleURL = podBundle.url(forResource: "ASHSearchedViewController", withExtension: "bundle") {
            let resourcesBundle = Bundle(url: bundleURL)
            image = UIImage(named: "Search", in: resourcesBundle, compatibleWith: nil)
        } else {
            image = UIImage(named: "Search", in: podBundle, compatibleWith: nil)
        }
    }
}
