//
//  StoresModel.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/02.
//
import Foundation
import UIKit

struct StoreModel: Codable {
    var id: Int
    var name: String
    var iconUrl: URL?
    var infos: [StoreInfoModel]
}

struct StoreInfoModel: Codable {
    var key: String
    var value: Bool
    var url: URL?
}

enum StoreInfoKey: String {
    case store
    case onlineStore
    case instagram
    
    var image: UIImage? {
        switch self {
        case .instagram: return R.image.instagram()
        case .store: return R.image.shop()
        case .onlineStore: return R.image.onlineShop()
        }
    }
}

extension StoreModel {
    static func get() -> [StoreModel] {
        let infos = [
            StoreInfoModel(key: "hasStore", value: true),
            StoreInfoModel(key: "hasAppraiser", value: true),
            StoreInfoModel(key: "hasOnlineStore", value: true)
        ]
        let store = StoreModel(id: 1, name: "名前", infos: infos)
        return [store]
    }
}
