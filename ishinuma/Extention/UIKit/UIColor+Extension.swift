//
//  UIColor+Extension.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/09.
//

import Foundation
import UIKit

extension UIColor {
    class func RGBA(_ hexRGB: Int, _ a: CGFloat) -> UIColor {
        let r: Int = (hexRGB >> 0x10) & 0xFF
        let g: Int = (hexRGB >> 0x08) & 0xFF
        let b: Int = hexRGB & 0xFF
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }
    
    class func RGB(_ hexRGB: Int) -> UIColor {
        return RGBA(hexRGB, 1)
    }
}
