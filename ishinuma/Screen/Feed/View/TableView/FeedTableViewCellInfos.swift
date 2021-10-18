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
        label.font = .boldSystemFont(ofSize: 12)
        label.textColor = .white
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
        let key = StoreInfoKey(rawValue: store.key)
        if let image = key?.image {
            baseView.addSubview(imageView)
            imageView.image = image
        }
        if let text = key?.text {
            baseView.addSubview(titleLabel)
            titleLabel.text = text
        }
        addSubview(baseView)
        baseView.layer.cornerRadius = 10
        baseView.backgroundColor = key?.backgroundColor ?? .gray
        
        clearTranslates()
        makeAutolayout(key)
    }
    
    private func makeAutolayout(_ key: StoreInfoKey?) {
        NSLayoutConstraint.activate([
            baseView.topAnchor.constraint(equalTo: topAnchor),
            baseView.bottomAnchor.constraint(equalTo: bottomAnchor),
            baseView.leftAnchor.constraint(equalTo: leftAnchor),
            baseView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        if let _ = key?.image {
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: baseView.topAnchor, constant: 4),
                imageView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: 2),
                imageView.trailingAnchor.constraint(equalTo: baseView.trailingAnchor, constant: -2),
                imageView.bottomAnchor.constraint(equalTo: baseView.bottomAnchor, constant: -4),
                imageView.widthAnchor.constraint(equalToConstant: 20)
            ])
        }
        if let _ = key?.text {
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: baseView.topAnchor, constant: 4),
                titleLabel.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: 4),
                titleLabel.trailingAnchor.constraint(equalTo: baseView.trailingAnchor, constant: -4),
                titleLabel.bottomAnchor.constraint(equalTo: baseView.bottomAnchor, constant: -4)
            ])
        }
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
