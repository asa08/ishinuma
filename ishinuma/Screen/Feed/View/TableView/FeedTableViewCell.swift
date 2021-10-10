//
//  FeedTableViewCell.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/06.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoStackView: UIStackView!
    
    func initSelf(store: StoreModel) {
        setIconImageView(store)
        setNameLabel(store)
        setInfoStackView(store)
    }
    
    private func setIconImageView(_ store: StoreModel) {
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.layer.cornerRadius = iconImageView.frame.height / 2
        iconImageView.image = R.image.placeHolder()
        guard let url = store.iconUrl else { return }
        iconImageView.image = UIImage(url: url)
    }
    
    private func setNameLabel(_ store: StoreModel) {
        nameLabel.font = .systemFont(ofSize: 15)
        nameLabel.textColor = .darkGray
        nameLabel.text = store.name
    }
    
    private func setInfoStackView(_ store: StoreModel) {
        infoStackView.arrangedSubviews.forEach({
            infoStackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        })
        store.infos.forEach({ _ in
            
        })
    }
}
