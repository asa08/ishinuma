//
//  FeedTableView.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/06.
//

import UIKit

class FeedTableView: UITableView {
    
    private var viewModel: FeedViewModel?
    
    func initSelf(viewModel: FeedViewModel) {
        self.viewModel = viewModel
        register(R.nib.feedTableViewCell)
    }
}
