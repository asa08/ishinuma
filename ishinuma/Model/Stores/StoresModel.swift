//
//  StoresModel.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/02.
//
import Foundation

struct StoreModel: Codable {
    var id: Int
    var name: String
    var url: URL?
    var instagram: URL?
    var twitter: URL?
    var hasStore: Bool
    var hasAppraiser: Bool
}

extension StoreModel {
    func get() -> [StoreModel] {
        let store = StoreModel(id: 1, name: "名前", hasStore: false, hasAppraiser: true)
        return [store]
    }
}
