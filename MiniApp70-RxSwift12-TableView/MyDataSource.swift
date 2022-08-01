//
//  MyDataSource.swift
//  MiniApp70-RxSwift12-TableView
//
//  Created by 前田航汰 on 2022/08/01.
//

import RxSwift
import RxCocoa
import UIKit

final class MyDataSource: NSObject, UITableViewDataSource, RxTableViewDataSourceType {

    typealias Element = [SampleModel]
    var itemModels: [SampleModel] = []

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        let element = itemModels[indexPath.row]
        cell.textLabel?.text = element.name
        return cell
    }

    func tableView(_ tableView: UITableView, observedEvent: Event<Element>) {
        Binder(self) { dataSource, element in
            dataSource.itemModels = element
            //ここでテーブルを更新している
            tableView.reloadData()
        }
        .on(observedEvent)
    }

}
