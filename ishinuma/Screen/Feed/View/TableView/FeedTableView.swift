//
//  FeedTableView.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/06.
//

import UIKit
import Combine

class FeedTableView: UITableView {
    
    private var viewModel: FeedViewModel?
    private var cancellables = Set<AnyCancellable>()
    
    func initSelf(viewModel: FeedViewModel) {
        backgroundColor = .black
        self.viewModel = viewModel
        setTableView()
        viewModel.output.stores.sink(receiveValue: { [weak self] _ in
            self?.reloadData()
        }).store(in: &cancellables)
    }
    
    private func setTableView() {
        register(R.nib.feedTableViewCell)
        delegate = self
        dataSource = self
        estimatedRowHeight = 65
        rowHeight = 65
    }
}

extension FeedTableView: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.input.transitDetail()
    }
    
}

extension FeedTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.output.stores.value.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = dequeueReusableCell(withIdentifier: R.nib.feedTableViewCell.identifier) as? FeedTableViewCell {
            guard let store = viewModel?.output.stores.value[indexPath.row] else { return cell }
            cell.initSelf(store: store)
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    
}
