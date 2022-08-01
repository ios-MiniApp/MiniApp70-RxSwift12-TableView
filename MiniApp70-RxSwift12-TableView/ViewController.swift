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

    @IBOutlet weak var rxTableView: UITableView!
    var dataSource = MyDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        setupTableView()
    }

    private func bind() {
//        viewModel.rxModel.bind(to: rxTableView.rx.items(cellIdentifier: tableViewCell, cellType: TableViewCell.self)) { row, element, cell in
//            cell.configure(model: element)
//        }.disposed(by: disposeBag)
        viewModel.rxModel
            .bind(to: rxTableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }

    private func setupTableView() {
        // rxTableView.rowHeight = 20
        rxTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

}

