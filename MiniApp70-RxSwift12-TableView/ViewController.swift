//
//  ViewController.swift
//  MiniApp70-RxSwift12-TableView
//
//  Created by 前田航汰 on 2022/08/01.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    private var tableViewCell = "TableViewCell"
    private var viewModel = SampleViewModel()
    private var disposeBag = DisposeBag()

    @IBOutlet weak var rxTableView: UITableView! {
        didSet {
            rxTableView.register(UINib(nibName: tableViewCell, bundle: nil), forCellReuseIdentifier: tableViewCell)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }

    private func bind() {

        viewModel.rxModel.bind(to: rxTableView.rx.items(cellIdentifier: tableViewCell, cellType: TableViewCell.self)) { row, element, cell in
            cell.configure(model: element)
        }.disposed(by: disposeBag)

    }

}

