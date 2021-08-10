//
//  MenuItem.swift
//  AlienReader
//
//  Created by Hao Nguyen on 10/08/2021.
//

import Foundation

struct MenuItem: Codable, Equatable, Identifiable {
    var id: String
    var title: String
    var url: String
}
