//
//  FeedTableViewCellInfos.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/17.
//

import Foundation
import UIKit

class FeedTableViewCellInfos: UIView {
    
    private let baseView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    init(_ store: StoreInfoModel) {
        super.init(frame: .zero)
        commonInit(store)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit(_ store: StoreInfoModel) {
        baseView.addSubview(titleLabel)
        baseView.addSubview(imageView)
        addSubview(baseView)
        
        clearTranslates()
        makeAutolayout()
    }
    
    private func makeAutolayout() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    private func clearTranslates(filter: ((UIView) -> Bool)? = nil) {
        clearTranslates(self, filter: filter)
    }
    
    private func clearTranslates(_ view: UIView, filter: ((UIView) -> Bool)?) {
        if filter == nil || filter?(view) == true {
            view.translatesAutoresizingMaskIntoConstraints = false
            view.subviews.forEach({ clearTranslates($0, filter: filter) })
        }
    }
}
