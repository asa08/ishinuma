//
//  UIImage+Extension.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/09.
//

import Foundation
import UIKit

extension UIImage {
    public convenience init(url: URL) {
        do {
            let data = try Data(contentsOf: url)
            self.init(data: data)!
            return
        } catch let err {
            print("Error : \(err.localizedDescription)")
        }
        self.init()
    }
}
