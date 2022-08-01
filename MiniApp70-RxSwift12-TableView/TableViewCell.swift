//
//  TableViewCell.swift
//  MiniApp70-RxSwift12-TableView
//
//  Created by 前田航汰 on 2022/08/01.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!

    func configure(model: SampleModel) {
        nameLabel.text = model.name
    }

}
