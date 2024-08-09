//
//  SizeConstants.swift
//  SAAProject
//
//  Created by SAHIL AMRUT AGASHE on 09/08/24.
//

import UIKit

struct SizeConstants {
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}
