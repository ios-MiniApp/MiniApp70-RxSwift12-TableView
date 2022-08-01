//
//  SampleModel.swift
//  MiniApp70-RxSwift12-TableView
//
//  Created by 前田航汰 on 2022/08/01.
//

import Foundation

struct SampleModel {

    var name:String?

    static func createModel() -> [SampleModel] {

        return [
            SampleModel(name: "sample1"),
            SampleModel(name: "sample2"),
            SampleModel(name: "sample3"),
            SampleModel(name: "sample4"),
            SampleModel(name: "sample5"),
            SampleModel(name: "sample6"),
            SampleModel(name: "sample7"),
            SampleModel(name: "sample8"),
            SampleModel(name: "sample9")
        ]

    }

}
