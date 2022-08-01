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
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample"),
            SampleModel(name: "sample")
        ]
    }

}
