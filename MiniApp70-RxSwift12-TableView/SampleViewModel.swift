//
//  ViewModel.swift
//  MiniApp70-RxSwift12-TableView
//
//  Created by 前田航汰 on 2022/08/01.
//

import Foundation
import RxSwift
import RxRelay

final class SampleViewModel {

    private var sampleModel = SampleModel.createModel()
    var rxModel = BehaviorRelay<[SampleModel]>(value: [])

    init() {
        rxModel.accept(sampleModel)
    }
}
