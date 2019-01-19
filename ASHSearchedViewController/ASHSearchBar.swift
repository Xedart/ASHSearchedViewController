//
//  ASHSearchBar.swift
//  SHSearchedViewController
//
//  Created by Shkil Artur on 1/18/19.
//  Copyright © 2019 Shkil Artur. All rights reserved.
//

import UIKit

class ASHSearchBar: UISearchBar {

    init() {
        super.init(frame: CGRect())
        showsCancelButton = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
