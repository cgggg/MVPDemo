//
//  Festival.swift
//  MVPDemo
//
//  Created by 陈刚 on 16/4/10.
//  Copyright © 2016年 陈刚. All rights reserved.
//

import Foundation
typealias DateViewModel = protocol<hasDate,ModelType>
struct Festival:DateViewModel{
    var date = ""
    var festivalName = ""
    func giveData<V : ViewType>(view: V) {
        view.getData(self)
    }
}